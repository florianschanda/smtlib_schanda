#!/usr/bin/env python3
#
# This file is part of smtlib_schanda.
#
# smtlib_schanda is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# smtlib_schanda is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with smtlib_schanda. If not, see
# <https://www.gnu.org/licenses/>.

import argparse
import os
import subprocess

from lib.solvers import (Base_Solver,
                         build_solver_library,
                         find_solver)


def process(cvc4, cvc5, filename):
    assert isinstance(cvc4, Base_Solver)
    assert isinstance(cvc5, Base_Solver)
    assert os.path.isfile(filename)

    cmd = [cvc4.binary(),
           "--output-lang=smtlib2.6",
           "--dump=raw-benchmark",
           "--preprocess-only",
           "--no-ite-simp",
           "--no-ext-rew-prep",
           "--dump-to=processed.smt2"]
    cmd.append(filename)

    print("Translating %s" % filename)
    p = subprocess.run(cmd,
                       stdout=subprocess.PIPE,
                       stderr=subprocess.STDOUT,
                       encoding="UTF-8",
                       check=True)
    assert p.stdout.strip() in ("unsat", "sat", "unknown")
    assert os.path.isfile("processed.smt2")

    print("> Post-processing...")
    with open("processed.smt2", "r", encoding="UTF-8") as fd:
        tmp = fd.readlines()
    os.unlink("processed.smt2")

    with open(filename, "w", encoding="UTF-8") as fd:
        fd.write(";; This file has been translated by CVC4 from an earlier\n")
        fd.write(";; version of SMTLIB to 2.6 using the script\n")
        fd.write(";; uplift_to_smtlib26.py in repo smtlib_schanda.\n")
        fd.write("\n")
        for line in tmp:
            if "set-option :incremental" in line:
                pass
            elif ":smt-lib-version" in line:
                fd.write("(set-info :smt-lib-version 2.6)\n")
            elif "meta-info :" in line:
                fd.write(line.replace("meta-info", "set-info"))
            else:
                fd.write(line)

    print("> Checking...")
    cmd = cvc5.command_line(filename)
    cmd.append("--parse-only")
    p = subprocess.run(cmd,
                       check=True,
                       encoding="UTF-8")


def main():
    solvers = build_solver_library()

    cvc4 = find_solver(solvers, "cvc4", "1.8")
    cvc5 = find_solver(solvers, "cvc5", "1.3.3")

    ap = argparse.ArgumentParser()
    ap.add_argument("benchmark_dir")

    options = ap.parse_args()

    if os.path.isfile(options.benchmark_dir):
        process(cvc4, cvc5, options.benchmark_dir)
        return

    if not os.path.isdir(options.benchmark_dir):
        ap.error("%s is not a directory" % options.benchmark_dir)

    for path, _, files in os.walk(options.benchmark_dir):
        for f in files:
            if f.endswith(".smt2"):
                process(cvc4, cvc5, os.path.join(path, f))


if __name__ == "__main__":
    main()
