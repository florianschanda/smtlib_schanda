from copy import copy

import os
import subprocess
import resource
import tempfile
import datetime

class Benchmark(object):
    def __init__(self, fn, dialect=None):
        self.benchmark = fn
        self.name      = os.path.basename(fn)
        cats = os.path.dirname(fn).split("/")
        self.cat = cats[0]
        if self.cat == "spark_2014":
            if "QF" in cats[1]:
                self.cat += "_qf"
        self.expected  = "unknown"
        self.data      = None
        if dialect is not None and os.path.exists(self.benchmark + "_" +
                                                  dialect):
            self.dialect = dialect
        else:
            self.dialect = None

    def load(self, keep_logic):
        self.data = ""
        if self.dialect is not None and self.dialect != "altergo":
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
                elif "set-info" in line and ":smt-lib-version":
                    pass
                elif not keep_logic and "(set-logic" in line:
                    pass
                else:
                    self.data += line + "\n"

        if not self.data.endswith("(exit)\n"):
            self.data += "(exit)\n"

        if self.dialect == "altergo":
            with open(self.benchmark + "_" + self.dialect, "rU") as fd:
                self.data = fd.read()


    def unload(self):
        self.data = None

class Prover_Kind(object):
    def __init__(self, name, base_cmd, use_logic=True, use_temp=False, use_dialect=None):
        self.name    = name
        self.cmd     = base_cmd
        self.logic   = use_logic
        self.temp    = use_temp
        self.dialect = use_dialect

class Prover(object):
    def __init__(self, kind, binary, timeout):
        self.cmd     = [binary] + kind.cmd
        self.timeout = timeout
        self.logic   = kind.logic
        self.temp    = kind.temp
        self.dialect = kind.dialect

    def get_status(self, benchmark):
        def set_limit():
            resource.setrlimit(resource.RLIMIT_CPU, (self.timeout,
                                                     self.timeout))

        benchmark.load(keep_logic = self.logic)

        if self.dialect == "altergo" and benchmark.dialect != "altergo":
            return ("error", "unsupported")

        cmd = copy(self.cmd)
        if self.temp:
            if self.dialect == "altergo":
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
        elif self.dialect == "altergo":
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
        self.task          = task
        self.prover_status = status
        self.comment       = comment

        if (self.prover_status in ("sat", "unsat") and
            self.task.benchmark.expected in ("sat", "unsat") and
            self.prover_status != self.task.benchmark.expected):
            self.status = "unsound"
            self.comment = "result %s is not %s" % (self.prover_status,
                                                    self.task.benchmark.expected)
        else:
            self.status = self.prover_status

    def __str__(self):
        rv = "[%c] %s" % ({"sat"     : 's',
                           "unsat"   : 'u',
                           "unknown" : '?',
                           "timeout" : ' ',
                           "error"   : 'e',
                           "unsound" : '!'}[self.status],
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
