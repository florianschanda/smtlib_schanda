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
        cats = os.path.dirname(fn).split("/")
        self.cat = cats[0]
        self.expected  = "unknown"
        self.data      = None

    def load(self, keep_logic):
        self.data = ""

        with open(self.benchmark, "rU") as fd:
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
                elif not keep_logic and "(set-logic" in line:
                    pass
                else:
                    self.data += line + "\n"

        if not self.data.endswith("(exit)\n"):
            self.data += "(exit)\n"

    def unload(self):
        self.data = None

class Prover_Kind(object):
    def __init__(self, name, base_cmd, use_logic=True):
        self.name  = name
        self.cmd   = base_cmd
        self.logic = use_logic

class Prover(object):
    def __init__(self, kind, binary, timeout):
        self.cmd     = [binary] + kind.cmd
        self.timeout = timeout
        self.logic   = kind.logic

    def get_status(self, benchmark):
        def set_limit():
            resource.setrlimit(resource.RLIMIT_CPU, (self.timeout,
                                                     self.timeout))

        cmd = self.cmd
        p = subprocess.Popen(cmd,
                             stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE,
                             preexec_fn=set_limit)
        benchmark.load(keep_logic = self.logic)
        stdout, stderr = p.communicate(benchmark.data)
        stdout = stdout.strip()
        benchmark.unload()

        if len(stdout) == 0 and len(stderr) == 0:
            status = "timeout"
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
        assert status in ("sat", "unsat", "unknown", "timeout", "error")
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
                             "unknown" : '?',
                             "timeout" : ' ',
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
    provers.append(Prover_Kind("cvc4", ["--lang=smt2"]))
    provers.append(Prover_Kind("z3", ["-in", "-smt2"], use_logic=False))
    provers.append(Prover_Kind("mathsat", ["-input=smt2"]))
    provers.append(Prover_Kind("mathsat_acdl", ["-input=smt2",
                                                "-theory.fp.mode=2"]))
    # provers.append(Prover_Kind("colibri", []))

    ap = argparse.ArgumentParser()
    ap.add_argument("--suite",
                    default="qf_fp",
                    choices=["qf_fp", "fp", "debug"])
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
    if options.suite == "debug":
        bench_dirs.append("crafted/QF_FP")

    print "Assembling benchmarks..."
    tasks = []
    for d in bench_dirs:
        for path, dirs, files in os.walk(d):
            for f in sorted(files):
                if f.endswith(".smt2"):
                    tasks.append(Task(Benchmark(os.path.join(path, f)),
                                      the_prover))

    detail = {}
    summary = {"solved"  : 0,
               "unknown" : 0,
               "timeout" : 0,
               "error"   : 0,
               "unsound" : 0}
    unsound = []
    errors = []

    def analyze(result, progress, start_time):
        result.print_summary(progress, start_time)

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
                           float((stats["solved"] + stats["timeout"]) * 100) /
                             float(total),
                           total,
                           stats["solved"],
                           stats["timeout"],
                           stats["error"],
                           stats["unsound"])

    start_time = datetime.datetime.now()
    n = 0
    if options.suite == "debug" and False:
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

    print "%20s %s\n" % ("benchmarks", stat_hdg)
    for cat in sorted(detail):
        print "%20s %s" % (cat, stat_str(detail[cat]))
    print "%20s %s" % ("TOTAL", stat_str(summary))

    with open("report_%s_%s.txt" % (options.prover_kind,
                                    options.suite), "w") as fd:
        fd.write("# Configuration \n")
        fd.write("Prover kind     : %s\n" % options.prover_kind)
        fd.write("Prover binary   : %s\n" %
                 os.path.basename(options.prover_bin).lstrip("./"))
        fd.write("Benchmark suite : %s\n" % options.suite)
        fd.write("Benchmark start : %s\n" % start_time)
        fd.write("Benchmark time  : %s\n" %
                 (datetime.datetime.now() - start_time))

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
