#!/usr/bin/env python
##############################################################################
##                                                                          ##
##                            smtlib_schanda                                ##
##                                                                          ##
##              Copyright (C) 2017, Altran UK Limited                       ##
##                                                                          ##
##  This file is part of smtlib_schamda.                                    ##
##                                                                          ##
##  smtlib_schamda is free software: you can redistribute it and/or modify  ##
##  it under the terms of the GNU General Public License as published by    ##
##  the Free Software Foundation, either version 3 of the License, or       ##
##  (at your option) any later version.                                     ##
##                                                                          ##
##  smtlib_schanda is distributed in the hope that it will be useful,       ##
##  but WITHOUT ANY WARRANTY; without even the implied warranty of          ##
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           ##
##  GNU General Public License for more details.                            ##
##                                                                          ##
##  You should have received a copy of the GNU General Public License       ##
##  along with smtlib_schanda. If not, see <http://www.gnu.org/licenses/>.  ##
##                                                                          ##
##############################################################################

# The basic architecture of Why3 makes it very hard to do some things,
# such as set a precise logic (we always set the most general one
# available). This script can be used to post-process the SPARK
# benchmarks and add some of this information afterwards.

import os
import subprocess
from glob import glob
import ply.lex as lex
import multiprocessing
import shutil

reserved_words = frozenset([
    # Basic reserved words (Section 3.1)
    "_",
    "!",
    "as",
    "let",
    "exists",
    "forall",
    "match",
    "par",

    # Scripting language reserved words (Section 3.9)
    "assert",
    "check-sat",
    "check-sat-assuming",
    "declare-const",
    "declare-datatype",
    "declare-datatypes",
    "declare-fun",
    "declare-sort",
    "define-fun",
    "define-fun-rec",
    "define-funs-rec",
    "define-sort",
    "echo",
    "exit",
    "get-assertions",
    "get-assignment",
    "get-model",
    "get-option",
    "get-proof",
    "get-unsat-assumptions",
    "get-unsat-core",
    "get-value",
    "pop",
    "push",
    "reset",
    "reset-assertions",
    "set-info",
    "set-logic",
    "set-option",

    "define-const",
])

class SMT_Lexer(object):
    tokens = (
        "BRA", "KET",
        "DECIMAL",
        "NUMERAL",
        "HEX",
        "BINARY",
        "STRING",
        "RESERVED_WORD",
        "KEY_WORD",
        "SYMBOL",
    )

    t_BRA     = r"\("
    t_KET     = r"\)"
    t_RESERVED_WORD = "|".join(map(lambda x: "(%s)" % x, reserved_words))

    t_ignore = " \t"

    def t_COMMENT(self, t):
        r";.*"

    def t_DECIMAL(self, t):
        r"(0|([1-9][0-9]*))\.[0-9]+"
        return t

    def t_NUMERAL(self, t):
        r"0|([1-9][0-9]*)"
        return t

    def t_HEX(self, t):
        r"\#x[0-9a-fA-F]+"
        return t

    def t_BINARY(self, t):
        r"\#b[01]+"
        return t

    def t_SYMBOL(self, t):
        r"([a-zA-Z~!@$%^&*_+=<>.?/-][a-zA-Z0-9~!@$%^&*_+=<>.?/-]*)|(\|[^|]+\|)"
        if t.value in reserved_words:
            t.type = "RESERVED_WORD"
        elif t.value[0] == '|':
            t.value = t.value[1:-1]
        return t

    def t_KEY_WORD(self, t):
        r":[a-zA-Z~!@$%^&*_+=<>.?/-][a-zA-Z0-9~!@$%^&*_+=<>.?/-]*"
        t.value = t.value[1:]
        return t

    def t_STRING(self, t):
        r'\"[^"]*\"' # TODO: Quoting

        # Chop the quotes
        t.value = t.value[1:-1]

        return t

    def t_newline(self, t):
        r"\n+"
        t.lexer.lineno += len(t.value)

    def t_error(self, t):
        print "Illegal character: '%s'" % t.value[0]
        t.lexer.skip(1)

    def tokenize(self, data):
        self.lexer.input(data)
        while True:
            tok = self.lexer.token()
            if tok is None:
                break
            yield tok

    def build(self, **kwargs):
        self.lexer = lex.lex(object=self, **kwargs)

    def __init__(self):
        self.build()

def parse_s_expression(ts):
    t = ts.next()
    if t.type == "BRA":
        rv = []
        while True:
            t = parse_s_expression(ts)
            if type(t) is not list and t.type == "KET":
                break
            rv.append(t)
        return rv
    else:
        return t

def parse_script(ts):
    rv = []
    while True:
        try:
            rv.append(parse_s_expression(ts))
        except StopIteration:
            return rv

def needs_quoting(symbol):
    # TODO: This is not actually sufficient
    return " " in symbol

def pp_s_expression(e):
    if type(e) is list:
        return "(" + " ".join(map(pp_s_expression, e)) + ")"
    elif e.type == "KEY_WORD":
        return ":" + e.value
    elif e.type == "SYMBOL" and needs_quoting(e.value):
        return "|" + e.value + "|"
    else:
        return e.value

def pp_logic(logic):
    if logic["quant"]:
        rv = ""
    else:
        rv = "QF_"
    if logic["array"]:
        rv += "A"
    if logic["uf"]:
        rv += "UF"
    if logic["bitvec"]:
        rv += "BV"
    if logic["float"]:
        rv += "FP"
    if logic["dt"]:
        rv += "DT"
    if logic["int"] or logic["real"]:
        if logic["linear"]:
            rv += "L"
        else:
            rv += "N"
        if logic["int"]:
            rv += "I"
        if logic["real"]:
            rv += "R"
        rv += "A"
    if rv == "QF_":
        raise Exception
    return rv

def is_word(expr, word):
    return (type(expr) is not list and
            expr.type == "RESERVED_WORD" and
            expr.value == word)

def extract_logic(expr, logic):
    if type(expr) is not list:
        if expr.value == "Int":
            logic["int"] = True
        elif expr.value == "Real":
            logic["real"] = True
        elif expr.value in ("*", "/", "div", "mod"):
            logic["linear"] = False
        elif expr.value == "Array":
            logic["array"] = True
        elif expr.value == "BitVec":
            logic["bitvec"] = True
        elif expr.value in ("forall", "exists"):
            logic["quant"] = True
        elif expr.value in ("Float16", "Float32", "Float64", "Float128",
                            "FloatingPoint", "RoundingMode"):
            logic["float"] = True
    else:
        if len(expr) == 0:
            pass
        elif is_word(expr[0], "declare-datatypes"):
            logic["dt"] = True
        elif is_word(expr[0], "declare-fun") and len(expr[2]) > 0:
            logic["uf"] = True

        for sub_expr in expr:
            extract_logic(sub_expr, logic)

def get_fn(cmd):
    return cmd[0].value

def process(task):
    rv = []

    smtlib_version = 2.5

    lexer = SMT_Lexer()
    with open(task["file"], "rU") as fd:
        data = fd.read()
    tokens = lexer.tokenize(data)
    script = parse_script(tokens)
    sub_table = {"count" : {"binding" : 0,
                            "sort"    : 0,
                            "make"    : 0,
                            "fun"     : 0,
                            "var"     : 0},
                 "table" : [{}]}
    logic = {"int"    : False,
             "real"   : False,
             "linear" : True,
             "quant"  : False,
             "bitvec" : False,
             "float"  : False,
             "array"  : False,
             "uf"     : False,
             "dt"     : False,
    }
    for cmd in script:
        extract_logic(cmd, logic)

    bench_name = os.path.basename(task["file"])

    bench_status = [cmd
                    for cmd in script
                    if get_fn(cmd) == "set-info" and cmd[1].value == "status"]
    assert len(bench_status) == 1
    bench_status = bench_status[0][2].value
    assert bench_status in ("sat", "unsat", "unknown")

    script = [cmd
              for cmd in script
              if not get_fn(cmd) in ("set-option", "set-logic", "set-info")]

    txt_logic = pp_logic(logic)

    bench_dir = task["dir"]
    if not os.path.isdir(bench_dir):
        os.mkdir(bench_dir)
    bench_dir = os.path.join(bench_dir, txt_logic)
    if not os.path.isdir(bench_dir):
        os.mkdir(bench_dir)

    rv.append("%s -> %s" % (bench_name, bench_dir))

    with open(os.path.join(bench_dir, bench_name), "w") as fd:
        fd.write("(set-info :smt-lib-version %s)\n" % smtlib_version)
        fd.write("(set-info :license |%s|)\n" %
                 "https://www.gnu.org/licenses/gpl-3.0.html")
        fd.write("(set-logic %s)\n" % txt_logic)
        fd.write("(set-info :source |%s|)\n" %
                 "Benchmarks generated by Florian Schanda from the public "
                 "SPARK 2014 testsuite and post-processed with a script to "
                 "set more precise logics.")
        fd.write("(set-info :category industrial)\n")
        fd.write("(set-info :status %s)\n" % bench_status)
        fd.write("\n")

        for cmd in script:
            fd.write(pp_s_expression(cmd) + "\n")

        for dialect_file in glob(task["file"] + "_*"):
            rv.append("... also copying %s" % dialect_file)
            shutil.copyfile(dialect_file,
                            os.path.join(bench_dir,
                                         os.path.basename(dialect_file)))

    return rv

def main():
    tasks = []
    for path, dirs, files in os.walk("spark_2014_all/ALL"):
        for f in files:
            if f.endswith(".smt2"):
                tasks.append({
                    "file" : os.path.join(path, f),
                    "dir"  : "spark_2014_all",
                })

    p = multiprocessing.Pool()

    n = len(tasks)
    for msg in p.imap_unordered(process, tasks, 2):
        for line in msg:
            print "%6u: %s" % (n, line)
        n -= 1


if __name__ == "__main__":
    main()
