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

import os
import re
import multiprocessing
import tempfile
import subprocess
import json

from enum import Enum, auto

from lib.solvers import (Solver_Config,
                         Solver_Verdict,
                         Solver_Response,
                         Solver_Logic_Change)


class Dialect(Enum):
    SMTLIB2 = auto()
    # The default

    MATHSAT = auto()
    # Mathsat did not not support operator chaining, some VCs are
    # re-encoded without that

    SPARK_LEGACY_FP = auto()
    # SMTLIB2, but using the old real-based axiomatisation from Why3
    # before we introduced proper float handling in SPARK

    ALTERGO = auto()
    # The alt-ergo dialect

    ALTERGO_FP = auto()
    # A variant, using their FP encoding

    CBMC = auto()
    # A version of the benchmark in C, so that CBMC can reason about
    # it


class Logic(Enum):
    UNKNOWN = auto()

    ALL = auto()
    ALL_NO_FLOAT = auto()

    QF_ALL = auto()
    QF_ALL_NO_FLOAT = auto()

    QF_FP = auto()
    QF_FPBV = auto()
    QF_FPBVLRA = auto()
    QF_FPNIRA = auto()
    QF_FPLRA = auto()
    QF_FPLIA = auto()
    QF_UFFP = auto()

    FP = auto()
    FPBV = auto()


class Expectation(Enum):
    UNKNOWN = auto()
    SAT     = auto()
    UNSAT   = auto()


class SMTLIB_Benchmark:
    def __init__(self, group, name):
        assert isinstance(group, str)
        assert isinstance(name, str)
        self.group           = group
        self.name            = name
        self.files           = {}    # dialect -> filename
        self.logic           = None
        self.expected_answer = Expectation.UNKNOWN

    def to_json(self):
        return {"group"  : self.group,
                "name"   : self.name,
                "files"  : {dialect.name: file_name
                            for dialect, file_name in self.files.items()},
                "logic"  : self.logic.name,
                "expect" : self.expected_answer.name}

    @classmethod
    def from_json(cls, json):
        assert isinstance(json, dict)
        bench = SMTLIB_Benchmark(json["group"],
                                 json["name"])
        bench.files = {Dialect[dialect]: file_name
                       for dialect, file_name in json["files"].items()}
        bench.logic = Logic[json["logic"]]
        bench.expected_answer = Expectation[json["expect"]]
        return bench

    @classmethod
    def from_filename(cls, file_name):
        assert os.path.isfile(file_name)
        bench, group, rest = file_name.split("/", 2)
        assert bench == "bench"

        bench = SMTLIB_Benchmark(group, os.path.splitext(rest)[0])
        bench.files[Dialect.SMTLIB2] = file_name

        with open(file_name, "r", encoding="UTF-8") as fd:
            found_status = False
            found_logic  = False
            for raw_line in fd:
                if raw_line.startswith(";"):
                    continue
                elif "set-logic" in raw_line:
                    m = re.match(r"^\(set-logic\s+(.+)\)",
                                 raw_line.strip())
                    if m is None:
                        print("%s: error: cannot parse set-logic:" % file_name)
                        print("| %s" % raw_line.strip())
                    else:
                        found_logic = True
                        bench.set_logic(m.group(1))
                elif ":status" in raw_line:
                    m = re.match(r"^\(set-info\s+:status\s+(.+)\)",
                                 raw_line.strip())
                    if m is None:
                        print("%s: error: cannot parse status:" % file_name)
                        print("| %s" % raw_line.strip())
                    else:
                        found_status = True
                        match m.group(1):
                            case "unknown":
                                bench.expected_answer = Expectation.UNKNOWN
                            case "sat":
                                bench.expected_answer = Expectation.SAT
                            case "unsat":
                                bench.expected_answer = Expectation.UNSAT
                            case _:
                                print("%s: error: cannot parse"
                                      " expectation (%s)" %
                                      (file_name, m.group(1)))
                if found_status and found_logic:
                    break
            if not found_logic:
                print("%s: error: no logic string:" % file_name)
        return bench

    def set_logic(self, logic_string):
        assert isinstance(logic_string, str)
        match logic_string:
            case ("UFBVDTNIRA" |
                  "AUFBVDTLIRA" |
                  "AUFDTLIRA" |
                  "UFBVDTLIRA" |
                  "UFDTLIRA" |
                  "UFDTNIRA" |
                  "AUFDTNIRA" |
                  "AUFBVDTNIRA"
                  ):
                self.logic = Logic.ALL_NO_FLOAT

            case ("AUFFPDTNIRA" |
                  "UFBVFPDTNIRA" |
                  "UFFPDTNIRA" |
                  "ALL_SUPPORTED" |
                  "AUFBVFPDTNIRA" |
                  "ABVFP"
                  ):
                self.logic = Logic.ALL

            case ("QF_NIA" |
                  "QF_LIA" |
                  "QF_ALIA" |
                  "QF_UFDTLIRA" |
                  "QF_BV"
                  ):
                self.logic = Logic.QF_ALL_NO_FLOAT

            case ("QF_AUFBVFPNIRA" |
                  "QF_AUFFPBV" |
                  "QF_UFFPDTNIRA" |
                  "QF_UFFPLRA" |
                  "QF_ABVFP" |
                  "QF_UFFPLIA" |
                  "QF_BVFPLRA" |
                  "QF_FPBVLIA"
                  ):
                self.logic = Logic.QF_ALL

            case "QF_FPLIA":
                self.logic = Logic.QF_FPLIA
            case "QF_FPLRA":
                self.logic = Logic.QF_FPLRA
            case "QF_FPNIRA":
                self.logic = Logic.QF_FPNIRA
            case "QF_FP":
                self.logic = Logic.QF_FP
            case "QF_UFFP":
                self.logic = Logic.QF_UFFP
            case "QF_BVFP" | "QF_FPBV":
                self.logic = Logic.QF_FPBV
            case "QF_FPBVLRA":
                self.logic = Logic.QF_FPBVLRA

            case "FP":
                self.logic = Logic.FP
            case "BVFP":
                self.logic = Logic.FPBV

            case _:
                self.logic = Logic.UNKNOWN
                print("%s/%s: error: unknown logic %s" %
                      (self.group, self.name, logic_string))

    def set_dialects(self, related_files):
        for file_name in related_files:
            ext = os.path.splitext(file_name)[1]
            match ext:
                case ".smt2":
                    assert self.files[Dialect.SMTLIB2] == file_name
                case ".smt2_mathsat":
                    self.files[Dialect.MATHSAT] = file_name
                case ".smt2_oldfp":
                    self.files[Dialect.SPARK_LEGACY_FP] = file_name
                case ".smt2_altergo_fp":
                    self.files[Dialect.ALTERGO_FP] = file_name
                case ".smt2_altergo":
                    self.files[Dialect.ALTERGO] = file_name
                case ".c" | ".i":
                    assert Dialect.CBMC not in self.files
                    self.files[Dialect.CBMC] = file_name
                case ".smt2_cbmc":
                    pass
                case _:
                    print("%s/%s: error: unknown dialect %s" %
                          (self.group, self.name, ext))

    def execute(self, solver, version, time_limit, memory_limit):
        assert isinstance(solver, Solver_Config)
        assert version in solver.versions
        assert isinstance(time_limit, int) and time_limit >= 1
        assert isinstance(memory_limit, int) and memory_limit >= 1

        # Find appropriate benchmark for this solver
        dialect = Dialect.SMTLIB2
        if solver.prefer_dialect in self.files:
            dialect = solver.prefer_dialect
        elif solver.require_dialect is not None:
            if solver.require_dialect in self.files:
                dialect = solver.require_dialect
            else:
                return Result(self.group, self.name, Solver_Verdict.UNSUPPORTED)

        # Prepare benchmark (removing meta-data)
        lines = []
        with open(self.files[dialect], "r", encoding="UTF-8") as fd:
            match dialect:
                case (Dialect.SMTLIB2 |
                      Dialect.MATHSAT |
                      Dialect.SPARK_LEGACY_FP):
                    for raw_line in fd:
                        if ":status" in raw_line:
                            continue
                        if "set-logic" in raw_line:
                            match solver.logic_change:
                                case Solver_Logic_Change.STRIP:
                                    continue
                                case Solver_Logic_Change.SIMPLIFY:
                                    if "QF_" in raw_line:
                                        lines.append("(set-logic QF_ALL)")
                                    else:
                                        lines.append("(set-logic ALL)")
                                case Solver_Logic_Change.NONE:
                                    lines.append(raw_line.rstrip())
                        else:
                            lines.append(raw_line.rstrip())
                case _:
                    for raw_line in fd:
                        lines.append(raw_line.rstrip())

        with tempfile.TemporaryDirectory(dir=".temp") as tdir:
            bench_file = os.path.join(tdir,
                                      os.path.basename(self.files[dialect]))
            with open(bench_file, "w", encoding="UTF-8") as fd:
                fd.write("\n".join(lines))
                fd.write("\n")

            cmd = ["util/limiter",
                   "-t", str(time_limit),
                   "-m", str(memory_limit),
                   "--"] + solver.command_line(version, bench_file)

            p = subprocess.run(cmd,
                               stdout   = subprocess.PIPE,
                               stderr   = subprocess.STDOUT,
                               encoding = "UTF-8",
                               check    = False)

            output = []
            limiter = None
            for line in p.stdout.splitlines():
                if line.startswith("limiter::"):
                    limiter = line.strip().split()
                elif line.rstrip():
                    output.append(line.rstrip())
            if limiter is None or len(limiter) != 5:
                return Result(self.group,
                              self.name,
                              Solver_Verdict.INTERNAL_ERROR,
                              "limiter output not available")

            match limiter[0]:
                case "limiter::timeout":
                    return Result(self.group,
                                  self.name,
                                  Solver_Verdict.TIMEOUT)
                case "limiter::oom":
                    return Result(self.group,
                                  self.name,
                                  Solver_Verdict.OOM)
                case "limiter::ok":
                    pass
                case _:
                    return Result(self.group,
                                  self.name,
                                  Solver_Verdict.INTERNAL_ERROR,
                                  "limiter category %s unknown" % limiter[0])

            if not output:
                return Result(self.group,
                              self.name,
                              Solver_Verdict.INTERNAL_ERROR,
                              "no output generated")

            match solver.response_kind:
                case Solver_Response.SMTLIB:
                    match output[0]:
                        case "unsat":
                            return Result(self.group,
                                          self.name,
                                          Solver_Verdict.UNSAT)
                        case "sat":
                            return Result(self.group,
                                          self.name,
                                          Solver_Verdict.SAT)
                        case "unknown":
                            return Result(self.group,
                                          self.name,
                                          Solver_Verdict.UNKNOWN)
                        case _:
                            return Result(self.group,
                                          self.name,
                                          Solver_Verdict.ERROR,
                                          "\n".join(output))
                case _:
                    assert False


def load_benchmark_group(group):
    assert os.path.isdir(os.path.join("bench", group))
    benchmarks = []
    for path, dirs, files in os.walk(os.path.join("bench", group)):
        roots = {}
        for file_name in files:
            root = os.path.splitext(os.path.join(path, file_name))[0]
            if root in roots:
                roots[root].append(os.path.join(path, file_name))
            else:
                roots[root] = [os.path.join(path, file_name)]
        for root, related_files in roots.items():
            smt_file = None
            for file_name in related_files:
                if file_name.endswith(".smt2"):
                    smt_file = file_name
            if smt_file is None:
                # print("%s/%s: error: cannot find smtlib2 benchmark" %
                #       (group, root))
                # for file_name in related_files:
                #     print("| %s" % file_name)
                continue
            bench = SMTLIB_Benchmark.from_filename(smt_file)
            bench.set_dialects(related_files)
            benchmarks.append(bench)
    return benchmarks


def survery_benchmarks():
    benchmarks = []
    for group in os.scandir("bench"):
        if group.is_dir():
            if group.name in ("dnns", ):
                continue
            benchmarks += load_benchmark_group(group.name)
    return benchmarks


def load_benchmarks(group=None):
    assert isinstance(group, str) or group is None
    with open("manifest.json", "r", encoding="UTF-8") as fd:
        benchmarks = [SMTLIB_Benchmark.from_json(bench)
                      for bench in json.load(fd)
                      if bench["group"] == group or group is None]
    return benchmarks


class Result:
    def __init__(self, group, name, kind, message=None):
        assert isinstance(group, str)
        assert isinstance(name, str)
        assert isinstance(kind, Solver_Verdict)
        assert isinstance(message, str) or message is None
        self.group   = group
        self.name    = name
        self.kind    = kind
        self.message = message


class Work_Package:
    def __init__(self, solver, version, benchmark):
        self.solver       = solver
        self.version      = version
        self.benchmark    = benchmark
        self.time_limit   = 1
        self.memory_limit = 1024

    def execute(self):
        return self.benchmark.execute(solver       = self.solver,
                                      version      = self.version,
                                      time_limit   = self.time_limit,
                                      memory_limit = self.memory_limit)


def execute_work_package(wp):
    assert isinstance(wp, Work_Package)
    return wp.execute()


def run_benchmarks(solver, version, benchmarks, threads=1):
    assert isinstance(solver, Solver_Config)
    assert version in solver.versions
    assert isinstance(benchmarks, list)
    assert isinstance(threads, int) and threads >= 1

    work_packages = [Work_Package(solver, version, benchmark)
                     for benchmark in benchmarks]
    results = []

    os.makedirs(".temp", exist_ok=True)
    progress = None
    if threads == 1:
        for wp in work_packages:
            result = execute_work_package(wp)
            results.append(result)
            new_progress = "%.1f" % (float(len(results) * 100) /
                                     float(len(work_packages)))
            if new_progress != progress:
                progress = new_progress
                print("%s%% complete [%u / %u]" % (progress,
                                                   len(results),
                                                   len(work_packages)))
    else:
        with multiprocessing.Pool(threads) as pool:
            for result in pool.imap_unordered(execute_work_package,
                                              work_packages,
                                              10):
                results.append(result)
                new_progress = "%.1f" % (float(len(results) * 100) /
                                         float(len(work_packages)))
                if new_progress != progress:
                    progress = new_progress
                    print("%s%% complete [%u / %u]" % (progress,
                                                       len(results),
                                                       len(work_packages)))

    return results
