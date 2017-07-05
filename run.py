#!/usr/bin/env python

import argparse
import multiprocessing
import os
import subprocess
import resource
import datetime

class Benchmark(object):
    def __init__(self, fn):
        self.benchmark = fn
        self.name      = os.path.basename(fn)
        self.cat       = os.path.basename(os.path.dirname(fn))
        self.expected  = "unknown"

        with open(fn, "rU") as fd:
            for raw_line in fd:
                if ";" in raw_line:
                    raw_line = raw_line[:raw_line.index(';')]
                if "set-info" in raw_line and ":status" in raw_line:
                    tokens = raw_line.strip().split()
                    assert tokens[0] == "(set-info"
                    assert tokens[1] == ":status"
                    status = tokens[2].strip(")")
                    assert status in ("unknown", "sat", "unsat")
                    self.expected = status

class Prover_Kind(object):
    def __init__(self, name, base_cmd):
        self.name = name
        self.cmd  = base_cmd

class Prover(object):
    def __init__(self, kind, binary, timeout):
        self.cmd     = [binary] + kind.cmd
        self.timeout = timeout

    def get_status(self, benchmark):
        def set_limit():
            resource.setrlimit(resource.RLIMIT_CPU, (self.timeout,
                                                     self.timeout))

        cmd = self.cmd + [benchmark.benchmark]
        p = subprocess.Popen(cmd,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE,
                             preexec_fn=set_limit)
        stdout, stderr = p.communicate()
        stdout = stdout.strip()

        if len(stdout) == 0 and len(stderr) == 0:
            status = "unknown"
            comment = ""
        elif len(stdout) == 0:
            status = "error"
            comment = stderr.strip()
        elif stdout.split()[0] in ("unsat", "sat", "unknown"):
            status  = stdout.split()[0]
            comment = ""
        else:
            status  = "error"
            comment = stdout + "\n" + stderr

        return status, comment


class Task(object):
    def __init__(self, benchmark, prover):
        self.benchmark = benchmark
        self.prover    = prover

    def execute(self):
        status, comment = self.prover.get_status(self.benchmark)
        return Result(self, status, comment)

class Result(object):
    def __init__(self, task, status, comment):
        assert status in ("sat", "unsat", "unknown", "error")
        self.task    = task
        self.status  = status
        self.comment = comment

        if (self.status in ("sat", "unsat") and
            self.task.benchmark.expected in ("sat", "unsat") and
            self.status != self.task.benchmark.expected):
            self.status = "unsound"
            self.comment = "result %s is not %s" % (self.status,
                                                    self.task.benchmark.expected)

    def __str__(self):
        return "[%c] %s" % ({"sat"     : 's',
                             "unsat"   : 'u',
                             "unknown" : ' ',
                             "error"   : 'e',
                             "unsound" : '!'}[self.status],
                            self.task.benchmark.name)

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

def process(task):
    return task.execute()

def main():
    provers = []
    provers.append(Prover_Kind("cvc4", ["--lang=smt2"]))
    provers.append(Prover_Kind("z3", ["-smt2"]))
    provers.append(Prover_Kind("mathsat", []))
    provers.append(Prover_Kind("mathsat_acdl", ["-theory.fp.mode=2"]))
    provers.append(Prover_Kind("colibri", []))

    ap = argparse.ArgumentParser()
    ap.add_argument("--suite",
                    default="qf_fp",
                    choices=["qf_fp", "fp"])
    ap.add_argument("--timeout",
                    default=5,
                    type=int)
    ap.add_argument("prover_kind",
                    choices=[p.name for p in provers],
                    metavar="KIND",
                    help="prover kind")
    ap.add_argument("prover_bin",
                    help="prover binary",
                    metavar="BINARY")

    options = ap.parse_args()

    the_prover = None
    for p in provers:
        if p.name == options.prover_kind:
            the_prover = Prover(p, options.prover_bin, options.timeout)

    bench_dirs = []
    if options.suite in ("qf_fp", "fp"):
        bench_dirs.append("crafted/QF_FP")
        bench_dirs.append("crafted/QF_FPBV")
        bench_dirs.append("crafted/QF_FPLRA")
        bench_dirs.append("griggio")
        bench_dirs.append("wintersteiger")
        bench_dirs.append("random")
        bench_dirs.append("nyxbrain")
    if options.suite == "fp":
        bench_dirs.append("spark_2014/AUFBVFPDTNIRA")

    print "Assembling benchmarks..."
    tasks = []
    for d in bench_dirs:
        for path, dirs, files in os.walk(d):
            for f in sorted(files):
                if f.endswith(".smt2"):
                    tasks.append(Task(Benchmark(os.path.join(path, f)),
                                      the_prover))

    pool = multiprocessing.Pool()

    detail = {}
    summary = {"correct" : 0,
               "unknown" : 0,
               "error"   : 0,
               "unsound" : 0}
    unsound = []

    def analyze(result, progress, start_time):
        result.print_summary(progress, start_time)

        if result.task.benchmark.cat not in detail:
            detail[result.task.benchmark.cat] = {"correct" : 0,
                                                 "unknown" : 0,
                                                 "error"   : 0,
                                                 "unsound" : 0}
        if result.status in ("unsat", "sat"):
            key = "correct"
        else:
            key = result.status
            if result.status == "unsound":
                unsound.append(result.task.benchmark.name)

        detail[result.task.benchmark.cat][key] += 1
        summary[key] += 1

    def stat_str(stats):
        total = sum(stats.itervalues())
        return "%5.1f%% (%u/%u, %u error, %u unsound)" % (
            float(stats["correct"] * 100) / float(total),
            stats["correct"],
            total,
            stats["error"],
            stats["unsound"])

    start_time = datetime.datetime.now()
    n = 0
    for result in pool.imap_unordered(process, tasks, 5):
        n += 1
        analyze(result, float(n * 100) / float(len(tasks)), start_time)
    #for task in tasks:
    #    analyze(process(task))

    print "Unsound results:"
    for u in unsound:
        print u
    for cat in sorted(detail):
        print "%20s %s" % (cat, stat_str(detail[cat]))
    print "%20s %s" % ("TOTAL", stat_str(summary))

if __name__ == "__main__":
    main()
