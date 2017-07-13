#!/usr/bin/env python

import argparse
import multiprocessing
import os
import datetime
from cPickle import dump

from common import *

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
                                "--nl-ext"]))
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
                    choices=["qf_fp", "fp", "debug", "schanda", "spark"])
    ap.add_argument("--single",
                    default=False,
                    action="store_true")
    ap.add_argument("--timeout",
                    default=5,
                    type=int)
    ap.add_argument("--force",
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

    result_basename = "%s_%s_%s" % \
                      (options.suite,
                       options.prover_kind,
                       os.path.basename(options.prover_bin).lstrip("./"))
    result_pickle = "data_%s.p" % result_basename
    result_report = "report_%s.txt" % result_basename

    if not options.force and os.path.exists(result_pickle):
        print "Results for %s (%s) already exist. Use --force to recreate." %\
            (options.prover_kind,
             os.path.basename(options.prover_bin).lstrip("./"))
        return

    the_prover = None
    for p in provers:
        if p.name == options.prover_kind:
            the_prover = Prover(p, options.prover_bin, options.timeout)

    bench_dirs = []
    if options.suite in ("schanda", "fp_fp", "fp"):
        bench_dirs.append("crafted/QF_FP")
        bench_dirs.append("crafted/QF_FPBV")
        bench_dirs.append("crafted/QF_FPLRA")
        bench_dirs.append("random")
    if options.suite in ("qf_fp", "fp"):
        bench_dirs.append("griggio")
        bench_dirs.append("wintersteiger")
        bench_dirs.append("nyxbrain")
    if options.suite in ("qf_fp", "fp", "spark"):
        bench_dirs.append("spark_2014/QF_AUFBVFPNIRA")
    if options.suite in ("fp", "spark"):
        bench_dirs.append("spark_2014/AUFBVFPDTNIRA")
    if options.suite == "debug":
        bench_dirs.append("spark_2014/QF_AUFBVFPNIRA")

    print "Assembling benchmarks..."
    tasks = []
    for d in bench_dirs:
        for path, dirs, files in os.walk(d):
            for f in sorted(files):
                if f.endswith(".smt2"):
                    tasks.append(Task(Benchmark(os.path.join(path, f),
                                                dialect = the_prover.dialect),
                                      the_prover))
                elif ".smt2_" in f:
                    assert os.path.exists(os.path.join(path,
                                                       f.rsplit("_", 1)[0]))

    detail = {}
    summary = {"solved"  : 0,
               "unknown" : 0,
               "timeout" : 0,
               "error"   : 0,
               "unsound" : 0}
    unsound = []
    errors = []
    verdicts = {} # unjudged
    verdicts_processed = {} # with "unsound" thrown in

    def analyze(result, progress, start_time):
        result.print_summary(progress, start_time)
        verdicts[result.task.benchmark.benchmark] = result.prover_status
        verdicts_processed[result.task.benchmark.benchmark] = result.status

        if result.task.benchmark.cat not in detail:
            detail[result.task.benchmark.cat] = {"solved"  : 0,
                                                 "unknown" : 0,
                                                 "timeout" : 0,
                                                 "error"   : 0,
                                                 "unsound" : 0}
        if result.status in ("unsat", "sat"):
            key = "solved"
        else:
            key = result.status
            if result.status == "unsound":
                unsound.append(result.task.benchmark.name)
            elif result.status == "error":
                errors.append((result.task.benchmark.name,
                               result.comment))

        detail[result.task.benchmark.cat][key] += 1
        summary[key] += 1

    stat_hdg = "%6s %6s %6s %6s %5s %4s %4s" % ("solved",
                                                "nonerr",
                                                " total",
                                                "solved",
                                                "t/out",
                                                " err",
                                                "usnd")
    stat_fmt = "%5.1f%% %5.1f%% %6u %6u %5u %4u %4u"

    def stat_str(stats):
        total = sum(stats.itervalues())
        return stat_fmt % (float(stats["solved"] * 100) / float(total),
                           float((stats["solved"] +
                                  stats["timeout"] +
                                  stats["unknown"]) * 100) /
                             float(total),
                           total,
                           stats["solved"],
                           stats["timeout"],
                           stats["error"],
                           stats["unsound"])

    start_time = datetime.datetime.now()
    n = 0
    if options.single:
        for task in tasks:
            n += 1
            analyze(process(task),
                    float(n * 100) / float(len(tasks)),
                    start_time)
    else:
        pool = multiprocessing.Pool()
        for result in pool.imap_unordered(process, tasks, 5):
            n += 1
            analyze(result,
                    float(n * 100) / float(len(tasks)),
                    start_time)

    elapsed_total_time = datetime.datetime.now() - start_time

    print "%20s %s" % ("benchmarks", stat_hdg)
    for cat in sorted(detail):
        print "%20s %s" % (cat, stat_str(detail[cat]))
    print "%20s %s" % ("TOTAL", stat_str(summary))

    with open(result_pickle, "w") as fd:
        report = {
            "prover" : {
                "kind" : options.prover_kind,
                "bin"  : os.path.basename(options.prover_bin).lstrip("./")},
            "time" : {
                "start"   : start_time,
                "elapsed" : elapsed_total_time},
            "summary" : summary,
            "details" : detail,
            "verdicts" : verdicts,
            "verdicts_processed" : verdicts_processed,
        }
        dump(report, fd, -1)

    with open(result_report, "w") as fd:
        fd.write("# Configuration \n")
        fd.write("Prover kind     : %s\n" % options.prover_kind)
        fd.write("Prover binary   : %s\n" %
                 os.path.basename(options.prover_bin).lstrip("./"))
        fd.write("Benchmark suite : %s\n" % options.suite)
        fd.write("Benchmark start : %s\n" % start_time)
        fd.write("Benchmark time  : %s\n" % elapsed_total_time)

        fd.write("\n# Results\n")
        fd.write("%15s : %s\n" % ("benchmarks", stat_hdg))
        for cat in sorted(detail):
            fd.write("%15s : %s\n" % (cat, stat_str(detail[cat])))
        fd.write("%15s : %s\n" % ("TOTAL", stat_str(summary)))

        if len(unsound) > 0:
            fd.write("\n## Unsound\n")
            for u in sorted(unsound):
                fd.write("%s\n" % u)

        if len(errors) > 0:
            fd.write("\n## Errors\n")
            for b, e in sorted(errors, cmp=err_cmp):
                fd.write("### %s\n" % b)
                fd.write("%s\n\n" % e.rstrip())

if __name__ == "__main__":
    main()
