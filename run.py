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

from lib.solvers import Solver_Config
from lib.benchmarks import (survery_benchmarks,
                            load_benchmarks,
                            run_benchmarks)


def main():
    ap = argparse.ArgumentParser()
    subp = ap.add_subparsers(required=True,
                             dest="mode")

    ap_manifest = subp.add_parser("manifest")

    ap_run = subp.add_parser("run")
    ap_run.add_argument("solver")
    ap_run.add_argument("version")
    ap_run.add_argument("--group",
                        default=None)
    ap_run.add_argument("--threads",
                        type=int,
                        default=8)

    ap_install = subp.add_parser("install")
    ap_install.add_argument("solver")

    options = ap.parse_args()

    match options.mode:
        case "manifest":
            benchmarks = survery_benchmarks()
            with open("manifest.json", "w", encoding="UTF-8") as fd:
                json.dump([bench.to_json()
                           for bench in benchmarks],
                          fd,
                          sort_keys = True,
                          indent = 2)

        case "install":
            solver = Solver_Config(options.solver)
            solver.install_all()

        case "run":
            solver = Solver_Config(options.solver)
            if options.version == "latest":
                solver_version = list(sorted(solver.versions))[-1]
            elif options.version not in solver.versions:
                ap.error("valid version for %s: %s" %
                         (solver.name, ", ".join(solver.versions)))
                return 1
            else:
                solver_version = options.version

            benchmarks = load_benchmarks(options.group)
            results = run_benchmarks(solver,
                                     solver_version,
                                     benchmarks,
                                     options.threads)
            with open("results.%s.%s.json" %
                      (solver.name, solver_version),
                      "w",
                      encoding="UTF-8") as fd:
                result_json = {}
                for result in results:
                    if result.group not in result_json:
                        result_json[result.group] = {}
                    result_json[result.group][result.name] = {
                        "kind" : result.kind.name
                    }
                    if result.message is not None:
                        result_json[result.group][result.name]["message"] =\
                            result.message
                json.dump(result_json,
                          fd,
                          indent    = 2,
                          sort_keys = True)

    return 0


if __name__ == "__main__":
    sys.exit(main())
