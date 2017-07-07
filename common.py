from copy import copy

import os
import subprocess
import resource
import tempfile
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
    def __init__(self, name, base_cmd, use_logic=True, use_temp=False):
        self.name  = name
        self.cmd   = base_cmd
        self.logic = use_logic
        self.temp  = use_temp

class Prover(object):
    def __init__(self, kind, binary, timeout):
        self.cmd     = [binary] + kind.cmd
        self.timeout = timeout
        self.logic   = kind.logic
        self.temp    = kind.temp

    def get_status(self, benchmark):
        def set_limit():
            resource.setrlimit(resource.RLIMIT_CPU, (self.timeout,
                                                     self.timeout))

        benchmark.load(keep_logic = self.logic)

        cmd = copy(self.cmd)
        if self.temp:
            fid, fn = tempfile.mkstemp(suffix='.smt2',
                                       prefix='bench_')
            os.write(fid, benchmark.data)
            os.close(fid)
            cmd.append(fn)

        p = subprocess.Popen(cmd,
                             stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE,
                             preexec_fn=set_limit)
        if self.temp:
            stdout, stderr = p.communicate()
            os.unlink(fn)
        else:
            stdout, stderr = p.communicate(benchmark.data)
        stdout = stdout.strip()
        stderr = stderr.strip()
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
