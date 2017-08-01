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

import argparse
import multiprocessing
import os
import datetime
import bisect
from cPickle import dump
from pprint import pprint

from common import *
from mk_text_report import create_report

def process(task):
    return task.execute()

def err_cmp(a, b):
    b_left, c_left = a
    b_right, c_right = b
    x = cmp(c_left, c_right)
    if x != 0:
        return x
    else:
        return cmp(b_left, b_right)

def main():
    provers = []
    provers.append(Prover_Kind("cvc4",
                               ["--lang=smt2",
                                "--no-cond-rewrite-quant",
                                "--check-models"]))
    provers.append(Prover_Kind("z3",
                               ["-in", "-smt2"],
                               use_logic=False,
                               use_dialect="z3"))
    provers.append(Prover_Kind("mathsat",
                               ["-input=smt2"],
                               use_dialect="mathsat"))
    provers.append(Prover_Kind("mathsat_acdl",
                               ["-input=smt2",
                                "-theory.fp.mode=2"],
                               use_dialect="mathsat"))
    provers.append(Prover_Kind("colibri",
                               [],
                               use_temp=True))
    provers.append(Prover_Kind("altergo",
                               ["-max-split", "5"],
                               use_temp=True,
                               use_dialect="altergo"))

    ap = argparse.ArgumentParser()
    ap.add_argument("--suite",
                    default="fp",
                    choices=["all",
                             "qf_fp", "fp", "industrial", "spark",
                             "spark_all",
                             "debug"])
    ap.add_argument("--single",
                    default=False,
                    action="store_true")
    ap.add_argument("--timeout",
                    default=60,
                    type=int)
    ap.add_argument("--force",
                    default=False,
                    action="store_true")
    ap.add_argument("--report",
                    default=False,
                    action="store_true")
    ap.add_argument("prover_kind",
                    choices=[p.name for p in provers],
                    metavar="KIND",
                    help="prover kind")
    ap.add_argument("prover_bin",
                    help="prover binary",
                    metavar="BINARY")
    options = ap.parse_args()

    sane_prover_bin = os.path.basename(options.prover_bin).lstrip("./")

    the_prover = None
    for p in provers:
        if p.name == options.prover_kind:
            the_prover = Prover(p, options.prover_bin, options.timeout)

    bench_dirs = []
    if options.suite in ("all", "schanda", "fp_fp", "fp"):
        bench_dirs.append("crafted/QF_FP")
        bench_dirs.append("crafted/QF_FPBV")
        bench_dirs.append("crafted/QF_FPLRA")
        bench_dirs.append("random")
    if options.suite in ("all", "qf_fp", "fp"):
        bench_dirs.append("griggio")
        bench_dirs.append("wintersteiger")
        bench_dirs.append("nyxbrain")
    if options.suite in ("all", "qf_fp", "fp", "spark"):
        bench_dirs.append("spark_2014/QF_AUFBVFPNIRA")
    if options.suite in ("all", "fp", "spark"):
        bench_dirs.append("spark_2014/AUFBVFPDTNIRA")
        bench_dirs.append("heizmann")
    if options.suite in ("all", "fp", "industrial"):
        for d in os.listdir("."):
            if d.startswith("industrial_") and os.path.isdir(d):
                bench_dirs.append(d)
    if options.suite in ("all", "spark_all"):
        bench_dirs.append("spark_2014_all/ALL")
    if options.suite == "debug":
        bench_dirs.append("crafted/QF_FPBV")
        bench_dirs.append("random/smtlib.eq")

    data_filename = "data_%s.p" % mk_run_id(options.prover_kind,
                                            sane_prover_bin)

    # Check for existing results; skip this step in --force mode
    EXISTING_RESULTS = set()
    if not options.force:
        ensure_dir("results")
        for group in os.listdir("results"):
            if not os.path.isdir(os.path.join("results", group)):
                continue
            if data_filename in os.listdir(os.path.join("results", group)):
                EXISTING_RESULTS.add(group)

    print "Assembling benchmarks..."
    tasks = []
    for d in bench_dirs:
        for path, dirs, files in os.walk(d):
            for f in sorted(files):
                if f.endswith(".smt2"):
                    t = Task(Benchmark(os.path.join(path, f),
                                       dialect = the_prover.dialect),
                             the_prover)
                    if t.benchmark.cat not in EXISTING_RESULTS:
                        tasks.append(t)
                elif ".smt2_" in f:
                    assert os.path.exists(os.path.join(path,
                                                       f.rsplit("_", 1)[0]))

    if len(tasks) == 0:
        print "Results for %s (%s) already exist. Use --force to recreate." %\
            (options.prover_kind,
             sane_prover_bin)
        return

    BENCHMARK_GROUPS = frozenset(t.benchmark.cat for t in tasks)
    BENCHMARK_STATUS = {group : {"sat"     : [],
                                 "unsat"   : [],
                                 "unknown" : []}
                        for group in BENCHMARK_GROUPS}

    # See doc/result_format for a description
    RESULTS = {group : {} for group in BENCHMARK_GROUPS}

    def analyze(result, progress, start_time):
        bm    = result.task.benchmark
        group = bm.cat

        result.print_summary(progress, start_time)

        # Record expected benchmark status
        bisect.insort(BENCHMARK_STATUS[group][bm.expected], bm.sha)

        # Record verdict
        status_shorthand = {"unsat"   : "u",
                            "sat"     : "s",
                            "error"   : "e",
                            "timeout" : "t",
                            "unknown" : "?"}[result.prover_status]

        RESULTS[group][bm.sha] = {
            "status"  : status_shorthand,
            "dialect" : bm.dialect is not None,
            "time"    : result.cpu_time,
            "comment" : result.comment,
        }
        # TODO: Record time

    # Perform benchmark
    start_time = datetime.datetime.now()
    n = 0
    if options.single:
        for task in tasks:
            n += 1
            analyze(process(task),
                    float(n * 100) / float(len(tasks)),
                    start_time)
    else:
        bunch = 1 if options.suite == "debug" else 5
        pool = multiprocessing.Pool()
        for result in pool.imap_unordered(process, tasks, bunch):
            n += 1
            analyze(result,
                    float(n * 100) / float(len(tasks)),
                    start_time)
    elapsed_total_time = datetime.datetime.now() - start_time

    # Write group results
    for group in BENCHMARK_GROUPS:
        ensure_dir(os.path.join("results", group))

        with open(os.path.join("results",
                               group,
                               "benchmarks.p"),
                  "wb") as fd:
            dump(BENCHMARK_STATUS[group], fd, -1)
        with open(os.path.join("results",
                               group,
                               data_filename),
                  "wb") as fd:
            dump(RESULTS[group], fd, -1)

    if options.report:
        create_report(options.prover_kind, sane_prover_bin)

if __name__ == "__main__":
    main()
