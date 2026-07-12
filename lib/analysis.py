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
import sys
import json

from lib.enums import Solver_Verdict
from lib.benchmarks import (SMTLIB_Benchmark,
                            Expectation)
from lib.solvers import (Base_Solver,
                         find_solver)


def load_results(manifest, solver, with_analysis):
    assert isinstance(manifest, list)
    assert all(isinstance(bench, SMTLIB_Benchmark) for bench in manifest)
    assert isinstance(solver, Base_Solver)
    assert isinstance(with_analysis, bool)

    uid = solver.uid()

    with open(solver.result_file_name(), "r", encoding="UTF-8") as fd:
        result_json = json.load(fd)

    missing = 0
    errors  = 0
    unsound = 0
    msg_map = {}
    for bench in manifest:
        bench.errors[uid]   = []
        bench.verdicts[uid] = Solver_Verdict.NOT_RUN
        if bench.group not in result_json:
            missing += 1
            continue
        if bench.name not in result_json[bench.group]:
            missing += 1
            continue

        data = result_json[bench.group][bench.name]
        bench.verdicts[uid] = Solver_Verdict[data["kind"]]
        if bench.verdicts[uid] == Solver_Verdict.ERROR:
            errors += 1
        elif (bench.expected_answer == Expectation.SAT and
              bench.verdicts[uid] == Solver_Verdict.UNSAT):
            unsound += 1
            bench.verdicts[uid] = Solver_Verdict.UNSOUND
            bench.errors[uid].append("unsound unsat result")
        elif (bench.expected_answer == Expectation.UNSAT and
              bench.verdicts[uid] == Solver_Verdict.SAT):
            unsound += 1
            bench.verdicts[uid] = Solver_Verdict.UNSOUND
            bench.errors[uid].append("unsound sat result")
        if "message" in data:
            bench.errors[uid].append(data["message"])
            key = data["message"].strip()
            if key in msg_map:
                msg_map[key].append((bench.group, bench.name))
            else:
                msg_map[key] = [(bench.group, bench.name)]

    if not with_analysis:
        return

    for message, benchmarks in sorted(msg_map.items()):
        for line in message.splitlines():
            print(line)
        print("Occurs on %u benchmark(s):" % len(benchmarks))
        for group, name in benchmarks:
            print("* bench/%s/%s.smt2" % (group, name))
        print()

    print("=" * 40)
    print("Missing results : %u" % missing)
    print("Errors          : %u" % errors)
    print("Unsound results : %u" % unsound)

    print("=" * 40)
    group_results = {}
    global_results = {
        "count"    : 0,
        "verdicts" : {verdict : 0
                      for verdict in Solver_Verdict}
    }
    for bench in manifest:
        if bench.group not in group_results:
            group_results[bench.group] = {
                "count"    : 0,
                "verdicts" : {verdict : 0
                              for verdict in Solver_Verdict}
            }
        results = group_results[bench.group]
        results["count"] += 1
        global_results["count"] += 1
        results["verdicts"][bench.verdicts[uid]] += 1
        global_results["verdicts"][bench.verdicts[uid]] += 1

    def fmt(name, count, total):
        print("   %-10s : %-8u (% 6.1f%%)" %
              (name,
               count,
               float(count) / float(total) * 100.0))

    def show_group(name, results):
        if results["verdicts"][Solver_Verdict.NOT_RUN] == results["count"]:
            return False
        print("Benchmarks in %s" % name)
        fmt("Unsound",
            results["verdicts"][Solver_Verdict.UNSOUND],
            results["count"])
        fmt("Solved",
            results["verdicts"][Solver_Verdict.SAT] +
            results["verdicts"][Solver_Verdict.UNSAT],
            results["count"])
        fmt("Unknown",
            results["verdicts"][Solver_Verdict.UNKNOWN],
            results["count"])
        fmt("Timeout",
            results["verdicts"][Solver_Verdict.TIMEOUT],
            results["count"])
        fmt("OOM",
            results["verdicts"][Solver_Verdict.OOM],
            results["count"])
        fmt("Errors",
            results["verdicts"][Solver_Verdict.UNSUPPORTED] +
            results["verdicts"][Solver_Verdict.INTERNAL_ERROR] +
            results["verdicts"][Solver_Verdict.ERROR],
            results["count"])
        fmt("Not Run",
            results["verdicts"][Solver_Verdict.NOT_RUN],
            results["count"])
        return True

    show_overall = True
    for group in sorted(group_results):
        show_overall &= show_group(group, group_results[group])
    if show_overall:
        show_group("overall", global_results)

    print("=" * 40)
    for bench in manifest:
        if bench.verdicts[uid] == Solver_Verdict.UNSOUND:
            print("%s/%s: unsound result" % (bench.group, bench.name))


def analyse_single(manifest, solver):
    assert isinstance(manifest, list)
    assert all(isinstance(bench, SMTLIB_Benchmark) for bench in manifest)
    assert isinstance(solver, Base_Solver)

    load_results(manifest      = manifest,
                 solver        = solver,
                 with_analysis = True)


def analyse_global(manifest, solvers):
    assert isinstance(manifest, list)
    assert isinstance(solvers, list)

    # Determine which solvers were actually used
    used_solvers = []
    for dirent in os.scandir():
        if not (dirent.is_file() and
                dirent.name.startswith("results.") and
                dirent.name.endswith(".json")):
            continue
        core_name = dirent.name[len("results."):-len(".json")]
        parts = tuple(core_name.split("--"))
        match len(parts):
            case 2:
                solver = find_solver(solvers,
                                     parts[0],
                                     parts[1])
            case 3:
                solver = find_solver(solvers,
                                     parts[0],
                                     parts[1],
                                     parts[2])
            case _:
                print("error: unexpected result file name %s" % dirent.name)
                sys.exit(1)
        if solver is None:
            print("error: coult not find solver %s" % " ".join(parts))
            sys.exit(1)
        used_solvers.append(solver)

    # Load all results
    for solver in used_solvers:
        load_results(manifest      = manifest,
                     solver        = solver,
                     with_analysis = False)
