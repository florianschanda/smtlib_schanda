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

import sys
import argparse
import json

from lib.solvers import (build_solver_library,
                         find_solver)
from lib.benchmarks import (survery_benchmarks,
                            load_benchmarks,
                            run_benchmarks,
                            serialise_results,
                            load_results)


def main():
    solvers = build_solver_library()

    ap = argparse.ArgumentParser()
    subp = ap.add_subparsers(required=True,
                             dest="mode")

    # pylint: disable=unused-variable
    ap_manifest = subp.add_parser("manifest")

    ap_run = subp.add_parser("run")
    ap_run.add_argument("solver")
    ap_run.add_argument("version")
    ap_run.add_argument("--group",
                        default=None)
    ap_run.add_argument("--threads",
                        type=int,
                        default=8)

    ap_install = subp.add_parser("install_all")

    ap_analysis = subp.add_parser("analysis")
    ap_analysis.add_argument("solver")
    ap_analysis.add_argument("version")
    # pylint: enable=unused-variable

    options = ap.parse_args()

    match options.mode:
        case "run" | "analysis":
            solver = find_solver(solvers, options.solver, options.version)

    match options.mode:
        case "manifest":
            benchmarks = survery_benchmarks()
            with open("manifest.json", "w", encoding="UTF-8") as fd:
                json.dump([bench.to_json()
                           for bench in benchmarks],
                          fd,
                          sort_keys = True,
                          indent = 2)

        case "install_all":
            for solver in solvers:
                solver.install()

        case "run":
            benchmarks = load_benchmarks(options.group)
            results = run_benchmarks(solver,
                                     benchmarks,
                                     options.threads)
            serialise_results(results, solver)

        case "analysis":
            benchmarks = load_benchmarks()
            load_results(benchmarks, solver)

    return 0


if __name__ == "__main__":
    sys.exit(main())
