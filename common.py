#!/usr/bin/env python
# coding=UTF-8
##############################################################################
##                                                                          ##
##                            smtlib_schanda                                ##
##                                                                          ##
##              Copyright (C) 2017-2018, Altran UK Limited                  ##
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

from copy import copy, deepcopy

import os
import subprocess
import tempfile
import datetime
import hashlib
from cPickle import load

def cat_from_benchmark_name(bench):
    cat = bench.split("/")[0]
    if cat == "spark_2014":
        if "QF_" in bench.split("/")[1]:
            cat += "_qf"
    return cat

def ensure_dir(dn):
    components = os.path.normpath(dn).split(os.sep)
    for i in xrange(len(components)):
        d = os.path.join(*components[:i+1])
        if not os.path.exists(d):
            os.mkdir(d)
        assert os.path.isdir(d)

def secure_name(bm_name):
    m = hashlib.sha1()
    m.update(os.path.normpath(bm_name))
    return m.hexdigest()

class Benchmark(object):
    def __init__(self, fn, dialect=None):
        self.benchmark = fn
        self.sha       = secure_name(fn)
        self.name      = os.path.basename(fn)
        self.cat       = cat_from_benchmark_name(fn)
        self.logic     = None
        self.expected  = "unknown"
        self.data      = None
        if dialect is not None and os.path.exists(self.benchmark + "_" +
                                                  dialect):
            self.dialect = dialect
        else:
            self.dialect = None

    def load(self, keep_logic):
        altergo_mode = self.dialect is not None and "altergo" in self.dialect

        self.data = ""
        if not altergo_mode and self.dialect is not None:
            fn = self.benchmark + "_" + self.dialect
        else:
            fn = self.benchmark

        # We still do this for altergo, since status is not encoded in
        # the why files.
        with open(fn, "rU") as fd:
            for raw_line in fd:
                line = ""
                in_token = False
                in_comment = False
                for c in raw_line:
                    if in_token and c == "|":
                        in_token = False
                    elif c == "|":
                        in_token = True
                    elif in_token and c == ";":
                        pass
                    elif c == ";":
                        in_comment = True
                        break
                    elif c == "\n":
                        break
                    line += c

                if "set-info" in line and ":status" in line:
                    tokens = line.strip().split()
                    assert tokens[0] == "(set-info"
                    assert tokens[1] == ":status"
                    status = tokens[2].strip(")")
                    assert status in ("unknown", "sat", "unsat")
                    self.expected = status
                # elif "set-info" in line and ":smt-lib-version" in line:
                #     pass
                elif "(set-logic" in line:
                    tokens = line.strip().split()
                    assert tokens[0] == "(set-logic"
                    assert tokens[1].endswith(")")
                    self.logic = tokens[1].strip(")")
                    if keep_logic and self.logic is not None:
                        self.data += "(set-logic %s)\n" % self.logic
                else:
                    self.data += line + "\n"

        if not self.data.endswith("(exit)\n"):
            self.data += "(exit)\n"

        if altergo_mode:
            with open(self.benchmark + "_" + self.dialect, "rU") as fd:
                self.data = fd.read()


    def unload(self):
        self.data = None

class Prover_Kind(object):
    def __init__(self, name, base_cmd,
                 use_logic=True,
                 use_temp=False,
                 use_dialect=None,
                 strict_dialect=False,
                 only_logic=None):
        self.name    = name
        self.cmd     = base_cmd
        self.logic   = use_logic
        self.temp    = use_temp
        self.dialect = use_dialect
        self.strict  = strict_dialect  # if true, only run on special encoding
        self.only_logic = only_logic   # only support the given logics

class Prover(object):
    def __init__(self, kind, binary, timeout):
        self.cmd       = [binary] + kind.cmd
        self.timeout   = timeout
        self.mem_limit = 1024*5 # 5 GiB
        self.logic     = kind.logic
        self.temp      = kind.temp
        self.dialect   = kind.dialect
        self.strict    = kind.strict
        self.logics    = kind.only_logic

    # Returns a tuple (status, comment, time)
    def get_status(self, benchmark):
        benchmark.load(keep_logic = self.logic)

        # A few early aborts to cut down on run-time
        if self.strict and self.dialect != benchmark.dialect:
            return ("error", "classified::unsupported", 0.0)
        if self.logics is not None:
            if benchmark.logic not in self.logics:
                return ("error",
                        "classified::unsupported logic %s" % benchmark.logic,
                        0.0)

        # Since they don't implement SMT-LIB responses we need to special
        # case their responses. Exceptionalism much?
        altergo_mode = self.dialect is not None and "altergo" in self.dialect

        cmd = ["util/limiter",
               "-t", "%u" % self.timeout,   # given in seconds
               "-m", "%u" % self.mem_limit, # given in MiB
               "--",
               ] + self.cmd
        if self.temp:
            if altergo_mode:
                suffix = ".why"
            else:
                suffix = ".smt2"

            fid, fn = tempfile.mkstemp(suffix=suffix,
                                       prefix='bench_')
            os.write(fid, benchmark.data)
            os.close(fid)
            cmd.append(fn)

        p = subprocess.Popen(cmd,
                             stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
        if self.temp:
            stdout, stderr = p.communicate()
            os.unlink(fn)
        else:
            stdout, stderr = p.communicate(benchmark.data)
        stdout = stdout.strip()
        stderr = stderr.strip()
        benchmark.unload()

        # First, we try to extract the magic line from limiter and remove
        # it from stderr
        timeout_info = None
        stderr_new = ""
        for line in stderr.splitlines():
            if line.startswith("limiter::"):
                timeout_info = line.strip().split()
            else:
                stderr_new += line.rstrip() + "\n"
        if timeout_info is None:
            return ("error",
                    "could not determine timeout\n" + stdout.strip() +
                    "\n" + stderr.strip(),
                    0.0)
        stderr = stderr_new.strip()

        # timeout_info looks like so:
        #
        # 0             1    2 3   4
        # limiter::CODE 12.3 s 500 MiB
        if timeout_info[0] == "limiter::ok":
            status         = None # we'll work it out later
            wallclock_time = float(timeout_info[1])
        elif timeout_info[0] == "limiter::timeout":
            status         = "timeout"
            wallclock_time = float(timeout_info[1])
        elif timeout_info[0] == "limiter::oom":
            status         = "oom"
            wallclock_time = float(timeout_info[1])
        else:
            return ("error",
                    "unknown timeout status %s" % timeout_info[0],
                    0.0)

        # On timeout/oom we can stop here
        if status is not None:
            return (status, "", wallclock_time)

        if len(stdout) == 0 and len(stderr) == 0:
            status = "error"
            comment = ""
        elif len(stdout) == 0:
            status = "error"
            comment = stderr.strip()
        elif altergo_mode:
            tmp = stdout.strip().splitlines()
            if (len(tmp) == 1 and tmp[0].startswith("File ")):
                if ":Valid " in tmp[0]:
                    status = "unsat"
                    comment = ""
                elif ":Invalid " in tmp[0]:
                    status = "sat"
                    comment = ""
                elif ":I don't know" in tmp[0]:
                    status = "unknown"
                    comment = ""
                elif ":Timeout" in tmp[0]:
                    status = "timeout"
                    comment = ""
                else:
                    status = "error"
                    comment = stdout
            else:
                status  = "error"
                comment = stdout + "\n" + stderr
        else:
            if stdout.split()[0] in ("unsat", "sat", "unknown"):
                status  = stdout.split()[0]
                comment = ""
            else:
                status  = "error"
                comment = stdout + "\n" + stderr

        return status, comment.strip(), wallclock_time


class Task(object):
    def __init__(self, benchmark, prover):
        self.benchmark = benchmark
        self.prover    = prover

    def execute(self):
        status, comment, cpu_time = self.prover.get_status(self.benchmark)
        return Result(self, status, comment, cpu_time)

class Result(object):
    def __init__(self, task, status, comment, cpu_time):
        assert status in ("sat", "unsat", "unknown", "timeout", "oom", "error")
        self.task          = task
        self.prover_status = status
        self.comment       = comment
        self.cpu_time      = cpu_time

        if (self.prover_status in ("sat", "unsat") and
            self.task.benchmark.expected in ("sat", "unsat") and
            self.prover_status != self.task.benchmark.expected):
            self.status = "unsound"
            self.comment = "result %s is not %s" % (self.prover_status,
                                                    self.task.benchmark.expected)
        else:
            self.status = self.prover_status

    def __str__(self):
        rv = "[%s] %s" % ({"sat"     : 's ✓',
                           "unsat"   : 'u ✓',
                           "unknown" : ' ? ',
                           "timeout" : ' ⌛ ',
                           "oom"     : 'oom',
                           "error"   : 'err',
                           "unsound" : ' ! '}[self.status],
                          self.task.benchmark.name)
        if self.task.benchmark.dialect is not None:
            rv += " (%s)" % self.task.benchmark.dialect
        return rv

    def print_summary(self, progress, start_time):
        now = datetime.datetime.now()
        elapsed = now - start_time
        elapsed_s = float(elapsed.microseconds) / 1000000.0 + float(elapsed.seconds)
        per_percent = elapsed_s / progress
        remaining = per_percent * (100.0 - progress)
        projected = now + datetime.timedelta(0, int(remaining))

        print "<%5.1f%%> %3.0f %s" % (progress,
                                      remaining,
                                      str(self))
        if self.status in ("error", "unsound"):
            print self.comment.strip()

def mk_run_id(solver_kind, solver_bin):
    return "%s_%s" % (solver_kind,
                      os.path.basename(solver_bin).lstrip("./"))

def load_benchmark_status():
    print "Loading benchmark summaries"
    # returns a dictionay with benchmark status
    # bm_name -> {"status" : s (sat) | u (unsat) | ? (unknown)
    #             "name"   : original name}
    rv = {}

    if not os.path.isdir("results"):
        return rv

    # Benchmarks are stored with a hashed name, this allows us to
    # pretty-print the ones that are in the testsuite here.
    reverse_map = {}
    for path, dirs, files in os.walk("."):
        for f in files:
            if f.endswith(".smt2"):
                sha = secure_name(os.path.join(path, f))
                reverse_map[sha] = os.path.normpath(os.path.join(path, f))

    for group in os.listdir("results"):
        if not os.path.isdir(os.path.join("results", group)):
            continue
        with open(os.path.join("results", group, "benchmarks.p"), "rb") as fd:
            data = load(fd)
        assert set(data) == set(["sat", "unsat", "unknown"])
        for status in data:
            for bm in data[status]:
                rv[bm] = {"status" : {"sat"     : "s",
                                      "unsat"   : "u",
                                      "unknown" : "?"}[status],
                          "name"   : reverse_map.get(bm, "sha<%s>" % bm)}

    return rv

def list_results():
    result_files = set()
    for path, dirs, files in os.walk("results"):
        for f in files:
            if f.startswith("data_") and f.endswith(".p"):
                result_files.add(f)

    fatal = False
    for dir in os.listdir("results"):
        files = set(os.listdir(os.path.join("results", dir)))
        assert "benchmarks.p" in files
        files.remove("benchmarks.p")

        missing = result_files - files
        extra   = files - result_files

        if len(missing) > 0:
            print "Missing results in %s: %s" % (dir, ", ".join(missing))
            fatal = True
        if len(extra) > 0:
            print "Unexpected results in %s: %s" % (dir, ", ".join(extra))
            fatal = True
    if fatal:
        raise Exception

    rv = []
    for fn in result_files:
        tmp = fn.rsplit(".", 1)[0]
        tmp = tmp.split("_")[1:]
        if tmp[0] == "mathsat" and tmp[1] == "acdl":
            tmp[0:2] = ["mathsat_acdl"]
        elif tmp[0] == "z3" and tmp[1] == "smallfloats":
            tmp[0:2] = ["z3_smallfloats"]
        prover_kind = tmp[0]
        prover_bin  = "_".join(tmp[1:])
        rv.append((prover_kind, prover_bin))

    return sorted(rv)

SCORES = ("solved", "unknown", "timeout", "oom", "error", "unsound")

to_long_score = {"s" : "solved",
                 "?" : "unknown",
                 "t" : "timeout",
                 "o" : "oom",
                 "e" : "error",
                 "u" : "unsound"}

BLANK_SOLVER_DATA = {
    "group_results" : {},
    "group_summary" : {},
    "total_summary" : {
        "score"        : {score: 0 for score in SCORES},
        "average"      : {score: 0.0 for score in SCORES},
        "dialect"      : 0},
    "prover_kind"   : None,
    "prover_bin"    : None,
}

def augment_group_result(rv, group, benchmark_status):
    rv["group_summary"][group] = {
        "score"        : {score: 0 for score in SCORES},
        "average"      : {score: 0.0 for score in SCORES},
        "dialect"      : 0,
        "participated" : False,
        "annotated"    : False,
    }
    summary = rv["group_summary"][group]
    totals = rv["total_summary"]

    for bm, data in rv["group_results"][group].iteritems():
        assert bm in benchmark_status

        # Set score (solved, unsound, etc.)
        if data["status"] in ("s", "u"):
            if benchmark_status[bm]["status"] in ("s", "u"):
                if data["status"] == benchmark_status[bm]["status"]:
                    data["score"] = "s" # solved
                else:
                    data["score"] = "u" # unsound
            else:
                assert benchmark_status[bm]["status"] == "?"
                data["score"] = "s" # solved
        else:
            assert data["status"] in ("e", # error
                                      "t", # timeout
                                      "o", # out-of-memory
                                      "?") # unknown
            data["score"] = data["status"]

        # Contribute to group and overall totals
        summary["score"][to_long_score[data["score"]]] += 1
        totals["score"][to_long_score[data["score"]]] += 1
        if data["dialect"]:
            summary["dialect"] += 1
            totals["dialect"] += 1
        if benchmark_status[bm]["status"] in ("s", "u"):
            summary["annotated"] = True

    # Add aggregated group summary
    summary["participated"] = (summary["score"]["solved"] > 0 or
                               summary["score"]["timeout"] > 0 or
                               summary["score"]["oom"] > 0 or
                               summary["score"]["unsound"] > 0)

    # Special case for the "previous encoding" solver
    if rv["prover_kind"] == "oldfp":
        if summary["dialect"] == 0:
            summary["participated"] = False

    bm_total = sum(summary["score"].itervalues())
    for score in SCORES:
        summary["average"][score] = (
            float(summary["score"][score] * 100) /
            float(bm_total))

    return int(summary["participated"])

def augment_final_result(rv, group_total):
    totals = rv["total_summary"]
    for score in SCORES:
        if group_total > 0:
            totals["average"][score] = (
                sum(rv["group_summary"][group]["average"][score]
                    for group in rv["group_summary"]
                    if rv["group_summary"][group]["participated"]) /
                float(group_total))
        else:
            totals["average"][score] = 0.0

def load_results(solver_kind, solver_bin, benchmark_status=None):
    print "Loading results for %s (%s)" % (solver_kind, solver_bin)
    # See doc/result_format.txt for more information
    data_filename = "data_%s.p" % mk_run_id(solver_kind, solver_bin)

    rv = deepcopy(BLANK_SOLVER_DATA)
    rv["prover_kind"] = solver_kind
    rv["prover_bin"]  = solver_bin

    if not os.path.isdir("results"):
        return rv

    if benchmark_status is None:
        benchmark_status = load_benchmark_status()

    group_total = 0 # How many groups we have participated in, used for avav

    for group in os.listdir("results"):
        if not os.path.isdir(os.path.join("results", group)):
            continue
        if not os.path.isfile(os.path.join("results", group, data_filename)):
            continue
        with open(os.path.join("results", group, data_filename), "rb") as fd:
            rv["group_results"][group] = load(fd)

        # Augment
        group_total += augment_group_result(rv, group, benchmark_status)

    # Add aggregated total summary
    augment_final_result(rv, group_total)

    return rv

def mk_virtual_best_solver(solvers, benchmark_status):
    rv = deepcopy(BLANK_SOLVER_DATA)
    rv["prover_kind"] = "vbs"

    GROUPS = solvers[0]["group_results"]
    SCORE_ORDER = ["s", "?", "t", "o", "e", "u"]

    def solution_preference(a, b):
        if a["score"] == b["score"]:
            return cmp(a["time"], b["time"])
        else:
            return cmp(SCORE_ORDER.index(a["score"]),
                       SCORE_ORDER.index(b["score"]))

    group_total = 0 # How many groups we have participated in, used for avav

    # Go through group results and pick the best one available.
    for group in GROUPS:
        rv["group_results"][group] = {}
        for bm in solvers[0]["group_results"][group]:
            candidates = sorted((s["group_results"][group][bm]
                                 for s in solvers),
                                cmp = solution_preference)

            rv["group_results"][group][bm] = {
                "status"  : candidates[0]["status"],
                "dialect" : candidates[0]["dialect"],
                "time"    : candidates[0]["time"],
                "comment" : "VBS"
            }

        # Augment
        group_total += augment_group_result(rv, group, benchmark_status)

    # Add aggregated total summary
    augment_final_result(rv, group_total)

    return rv
