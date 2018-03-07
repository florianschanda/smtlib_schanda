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
            "OOM",
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
                           for cat in ("solved", "unknown", "timeout", "oom")))
            row.append("%.1f%%" % summary["average"]["solved"])
            row.append("%u" % summary["score"]["unknown"])
            row.append("%u" % summary["score"]["error"])
            row.append("%u" % summary["score"]["timeout"])
            row.append("%u" % summary["score"]["oom"])
            row.append("%u" % summary["score"]["unsound"])

            fd.write(FMT % tuple(row) + "\n")

        row = ["TOTAL/AVAV"]
        row.append("%.1f%%" %
                   sum(totals["average"][cat]
                       for cat in ("solved", "unknown", "timeout", "oom")))
        row.append("%.1f%%" % totals["average"]["solved"])
        row.append("%u" % totals["score"]["unknown"])
        row.append("%u" % totals["score"]["error"])
        row.append("%u" % totals["score"]["timeout"])
        row.append("%u" % totals["score"]["oom"])
        row.append("%u" % totals["score"]["unsound"])

        fd.write(FMT % tuple(row) + "\n")

        tmp_w = []
        tmp_t = []
        tmp_u = []
        for group in GROUPS:
            for bm, data in res["group_results"][group].iteritems():
                if data["score"] == "u":
                    tmp_w.append(bench[bm]["name"])
                elif data["score"] == "t":
                    tmp_t.append(bench[bm]["name"])
                elif data["score"] == "?":
                    tmp_u.append(bench[bm]["name"])
        if len(tmp_w) > 0:
            fd.write("\n# Unsound results\n")
            for bm in sorted(tmp_w):
                fd.write(bm + "\n")
        if len(tmp_t) > 0:
            fd.write("\n# Timeouts\n")
            for bm in sorted(tmp_t):
                fd.write(bm + "\n")
        if len(tmp_u) > 0:
            fd.write("\n# Unknown\n")
            for bm in sorted(tmp_u):
                fd.write(bm + "\n")

        error_map = {}
        for group in GROUPS:
            for bm, data in res["group_results"][group].iteritems():
                if data["score"] == "e":
                    err = data["comment"].strip()
                    if err in error_map:
                        error_map[err].add(bench[bm]["name"])
                    else:
                        error_map[err] = set([bench[bm]["name"]])

        if len(error_map) > 0:
            fd.write("\n# Errors (duplicates grouped)\n")
            for error in sorted(error_map):
                for bench in sorted(error_map[error]):
                    fd.write("## %s\n" % bench)
                fd.write(error + "\n\n")


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
