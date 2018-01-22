#!/usr/bin/env python
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

# The list of benchmarks from the XSat paper
XSAT_BENCH = [
    "div2.c.30",
    "mult1.c.30",
    "div3.c.30",
    "div.c.30",
    "mult2.c.30",
    "test_v7_r7_vr10_c1_s24535",
    "test_v5_r10_vr5_c1_s13195",
    "div2.c.40",
    "mult1.c.40",
    "test_v7_r7_vr1_c1_s24449",
    "div3.c.40",
    "div.c.40",
    "mult2.c.40",
    "test_v7_r7_vr5_c1_s3582",
    "test_v7_r7_vr1_c1_s22845",
    "test_v7_r7_vr5_c1_s19694",
    "test_v7_r7_vr5_c1_s14675",
    "test_v7_r7_vr10_c1_s32506",
    "test_v7_r7_vr10_c1_s10625",
    "test_v7_r7_vr1_c1_s4574",
    "test_v5_r10_vr5_c1_s8690",
    "test_v5_r10_vr1_c1_s32538",
    "test_v5_r10_vr5_c1_s13679",
    "test_v5_r10_vr10_c1_s15708",
    "test_v5_r10_vr10_c1_s7608",
    "test_v5_r10_vr1_c1_s19145",
    "test_v5_r10_vr1_c1_s13516",
    "test_v5_r10_vr10_c1_s21502",
    "sin2.c.10",
    "div2.c.50",
    "mult1.c.50",
    "div3.c.50",
    "mult2.c.50",
    "div.c.50"
]

def find_timeout(path):
    if os.path.exists(os.path.join(path, "TIMEOUT")):
        with open(os.path.join(path, "TIMEOUT"), "rU") as fd:
            tmp = int(fd.read().strip())
            assert tmp > 0
            return tmp
    elif "/" in path:
        return find_timeout("/".join(path.split("/")[:-1]))
    else:
        return None

def main():
    provers = []
    provers.append(Prover_Kind("cvc4",
                               ["--lang=smt2",
                                "--no-cond-rewrite-quant",
                                "--check-models"]))
    # Same as CVC4, but using --no-cbqi
    provers.append(Prover_Kind("nocbqi",
                               ["--lang=smt2",
                                "--no-cbqi",
                                "--no-cond-rewrite-quant",
                                "--check-models"]))
    # Same as CVC4, but using the old-style VCs
    provers.append(Prover_Kind("oldfp",
                               ["--lang=smt2",
                                "--no-cond-rewrite-quant",
                                "--check-models"],
                               use_dialect="oldfp",
                               strict_dialect=True))

    provers.append(Prover_Kind("z3",
                               ["-in", "-smt2"],
                               use_logic=False,
                               use_dialect="z3"))
    provers.append(Prover_Kind("z3_smallfloats",
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
                               use_dialect="altergo",
                               strict_dialect=True))
    provers.append(
        Prover_Kind("altergo-fp",
                    ["-max-split", "5",
                     "-use-fpa",
                     "-prelude",
                     os.path.abspath("altergo_fp_axioms_2017_08_14.why")],
                    use_temp=True,
                    use_dialect="altergo_fp",
                    strict_dialect=True))
    provers.append(Prover_Kind("yices",
                               ["--mcsat"],
                               use_logic=False,
                               use_temp=True))
    provers.append(Prover_Kind("xsat",
                               [],
                               use_temp=True,
                               only_logic=["QF_FP"]))
    provers.append(Prover_Kind("gosat",
                               ["-smtlib-output", "-f"],
                               use_logic=False, # Since it's based on Z3...
                               use_temp=True))
    provers.append(Prover_Kind("sonolar",
                               ["--input-format=smtlib2"],
                               use_logic=False, # Doesn't like logic strings
                               use_temp=True))
    provers.append(Prover_Kind("cbmc",
                               [],
                               use_dialect="cbmc",
                               strict_dialect=True))


    ap = argparse.ArgumentParser()
    ap.add_argument("--suite",
                    default="fp",
                    choices=["all",
                             "qf_fp", "fp", "industrial", "spark",
                             "schanda",
                             "griggio",
                             "spark_all",
                             "xsat_paper", # the 34 benchmarks from xsat paper
                             "debug"])
    ap.add_argument("--single",
                    default=False,
                    action="store_true")
    ap.add_argument("--timeout",
                    default=None,
                    type=int,
                    help="by default we use the benchmark-specific timeout; "
                    "use this option to globally override it")
    ap.add_argument("--force",
                    default=False,
                    action="store_true")
    ap.add_argument("--report",
                    default=False,
                    action="store_true")
    ap.add_argument("--no-utils",
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
            the_prover = Prover(p, options.prover_bin)

    bench_dirs = []
    if options.suite in ("all", "schanda", "qf_fp", "fp"):
        bench_dirs.append("crafted/QF_FP")
        bench_dirs.append("crafted/QF_FPBV")
        bench_dirs.append("crafted/QF_FPLRA")
        bench_dirs.append("random")
        # bench_dirs.append("random_ext")
    if options.suite in ("all", "qf_fp", "fp", "xsat_paper", "griggio"):
        bench_dirs.append("griggio")
    if options.suite in ("all", "qf_fp", "fp"):
        bench_dirs.append("wintersteiger")
        bench_dirs.append("nyxbrain")
    if options.suite in ("all", "qf_fp", "fp", "spark"):
        bench_dirs.append("spark_2014/QF_AUFBVFPNIRA")
    if options.suite in ("all", "fp", "spark"):
        bench_dirs.append("spark_2014/AUFBVFPDTNIRA")
    if options.suite in ("all", "fp"):
        bench_dirs.append("heizmann")
    if options.suite in ("all", "fp", "industrial"):
        for d in os.listdir("."):
            if d.startswith("industrial_") and os.path.isdir(d):
                bench_dirs.append(d)
    if options.suite in ("all", "spark_all"):
        bench_dirs.append("spark_2014_all")
    if options.suite == "debug":
        bench_dirs.append("cbmc/demo")

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

    if not options.no_utils:
        print "Compiling utilities..."
        os.system("make -C util")

    print "Assembling benchmarks..."
    tasks = []
    for d in bench_dirs:
        for path, dirs, files in os.walk(d):
            timeout = options.timeout
            if timeout is None:
                timeout = find_timeout(path)
            for f in sorted(files):
                if f.endswith(".smt2"):
                    if options.suite == "xsat_paper" and f.replace(".smt2","") not in XSAT_BENCH:
                        continue
                    t = Task(Benchmark(os.path.join(path, f),
                                       the_prover.dialect,
                                       timeout),
                             the_prover)
                    if t.benchmark.cat not in EXISTING_RESULTS:
                        tasks.append(t)
                elif ".smt2_" in f:
                    assert os.path.exists(os.path.join(path,
                                                       f.split(".smt2_")[0]
                                                       + ".smt2"))

    assert not options.suite == "xsat_paper" or len(tasks) == len(XSAT_BENCH)

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
                            "oom"     : "o",
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
        bunch = 1 if options.suite in ("debug", "xsat_paper") else 5
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
