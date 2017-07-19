#!/usr/bin/env python
##############################################################################
##                                                                          ##
##                            smtlib_schanda                                ##
##                                                                          ##
##              Copyright (C) 2017, Altran UK Limited                       ##
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

# This script produces nice plain-text reports from all the results.

import os
import argparse

from common import mk_run_id, load_benchmark_status, load_results

def create_report(prover_kind, prover_bin):
    bench = load_benchmark_status()
    res = load_results(prover_kind, prover_bin, bench)
    totals = res["total_summary"]
    GROUPS = sorted(res["group_summary"])

    HEAD = ("Benchmark",
            "Non-Err",
            "Solved",
            "Unknown",
            "Error",
            "Timeout",
            "Unsound")
    FMT = "%%%us " % max(len(HEAD[0]),
                         len("TOTAL/AVAV"),
                         max(map(len, GROUPS)))
    FMT += " ".join(["%%%us" % max(map(len, HEAD[1:]))] * len(HEAD[1:]))

    with open("report_%s.txt" % mk_run_id(prover_kind,
                                          prover_bin),
              "w") as fd:
        fd.write("# Configuration\n")
        fd.write("Prover kind   : %s\n" % prover_kind)
        fd.write("Prover binary : %s\n" % prover_bin)

        fd.write("\n# Summary\n")
        fd.write(FMT % HEAD + "\n")
        for group in GROUPS:
            summary = res["group_summary"][group]

            row = [group]
            row.append("%.1f%%" %
                       sum(summary["average"][cat]
                           for cat in ("solved", "unknown", "timeout")))
            row.append("%.1f%%" % summary["average"]["solved"])
            row.append("%u" % summary["score"]["unknown"])
            row.append("%u" % summary["score"]["error"])
            row.append("%u" % summary["score"]["timeout"])
            row.append("%u" % summary["score"]["unsound"])

            fd.write(FMT % tuple(row) + "\n")

        row = ["TOTAL/AVAV"]
        row.append("%.1f%%" %
                   sum(totals["average"][cat]
                       for cat in ("solved", "unknown", "timeout")))
        row.append("%.1f%%" % totals["average"]["solved"])
        row.append("%u" % totals["score"]["unknown"])
        row.append("%u" % totals["score"]["error"])
        row.append("%u" % totals["score"]["timeout"])
        row.append("%u" % totals["score"]["unsound"])

        fd.write(FMT % tuple(row) + "\n")

        fd.write("\n# Unsound results\n")
        for group in GROUPS:
            for bm, data in res["group_results"][group].iteritems():
                if data["score"] == "u":
                    fd.write(bench[bm]["name"] + "\n")

        fd.write("\n# Errors\n")
        for group in GROUPS:
            for bm, data in res["group_results"][group].iteritems():
                if data["score"] == "e":
                    fd.write("\n## %s\n" % bench[bm]["name"])
                    fd.write(data["comment"] + "\n")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("prover_kind",
                    metavar="KIND",
                    help="prover kind")
    ap.add_argument("prover_bin",
                    help="prover binary",
                    metavar="BINARY")
    options = ap.parse_args()

    create_report(options.prover_kind, options.prover_bin)

if __name__ == "__main__":
    main()
