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

import os
import sys
import argparse
from cPickle import load
from pprint import pprint

from common import load_benchmark_status, load_results, list_results
from tikztable import *

CONFIGURATIONS = list_results()
BENCHMARKS = load_benchmark_status()

data = [load_results(solver_kind, solver_bin, BENCHMARKS)
        for solver_kind, solver_bin in CONFIGURATIONS
        if solver_kind == "cvc4"]

other_data = [load_results(solver_kind, solver_bin, BENCHMARKS)
              for solver_kind, solver_bin in CONFIGURATIONS
              if solver_kind != "cvc4"]

COMPARISON_CATS = ("solved", "timeout", "error", "unsound")

GROUPS = sorted(data[-1]["group_summary"])

def mk_bench_name(cat):
    mapping = {
        "crafted"       : "Schanda",
        "nyxbrain"      : "NyxBrain",
        "random"        : "PyMPF",
        "spark_2014"    : "{\\sc Spark~2014}",
        "spark_2014_qf" : "{\\sc Spark~QF}",
    }
    if cat in mapping:
        return mapping[cat]
    else:
        return cat.replace("_", "\\_").capitalize()

def mk_solver_name(nam):
    return {
        "cvc4"         : "{\sc cvc4}",
        "z3"           : "Z3",
        "colibri"      : "Colibri",
        "mathsat"      : "MathSAT",
        "mathsat_acdl" : "MathSAT (ACDL)",
        "altergo"      : "Alt-Ergo 1.3",
    }.get(nam, nam)

def mk_coloring(criteria):
    if criteria == "solved":
        return COL_AWARD_HIGH
    elif criteria in ("timeout", "unknown"):
        return COL_AWARD_LOW
    else:
        # error, unsound
        return COL_ERROR

def mk_fmt_function(criteria):
    def format_fn(item):
        if criteria == "solved":
            if item == 100.0:
                return "$\checkmark$"
            else:
                return "%.1f\\%%" % item
        elif criteria in ("error", "unsound") and item == 0:
            return "$\checkmark$"
        else:
            return "%u" % item
    return format_fn

def format_fn_totals(item):
    return "%.0f\\%%" % item

def mk_cvc4_shortname(prover_bin):
    return "-".join(prover_bin.split("_")[-2:])

def mk_progress_slides(fd):
    versions = [data[0], data[-1]]

    # Table with Benchmark, (Old) Solved%, (New) Solved%
    def mk_progress_table(criteria):
        assert criteria in ("solved", "unknown", "error", "timeout", "unsound")

        t = TikzTable(title      = "Benchmark",
                      columns    = [v["prover_bin"] for v in versions],
                      col_fmt_fn = mk_cvc4_shortname)
        for group in GROUPS:
            if (criteria == "unsound" and
                not versions[-1]["group_summary"][group]["annotated"]):
                continue

            kind = "average" if criteria == "solved" else "score"
            tdata = {v["prover_bin"] : v["group_summary"][group][kind][criteria]
                     for v in versions}
            t.add_row(title     = mk_bench_name(group),
                      data      = tdata,
                      format_fn = mk_fmt_function(criteria),
                      coloring  = mk_coloring(criteria))

        fd.write("\\begin{frame}{FP progress in CVC4}{%s}\n" %
                 criteria.capitalize())
        fd.write("\\begin{center}\n")
        fd.write(t.emit())
        fd.write("\\end{center}\n")
        fd.write("\\end{frame}\n\n")

    def mk_plot(avav_key, color, group=None):
        if group is None:
             # Average of averages
            points = [r["total_summary"]["average"][avav_key]
                      for r in data]
            bench = [(r["prover_kind"],
                      r["total_summary"]["average"][avav_key])
                     for r in other_data]
        else:
            # A specific benchmark
            points = [r["group_summary"][group]["average"][avav_key]
                      for r in data]
            bench = [(r["prover_kind"],
                      r["group_summary"][group]["average"][avav_key])
                     for r in other_data]

        fd.write("\\begin{center}\n")
        fd.write("\\begin{tikzpicture}\n")
        fd.write(r"\datavisualization [" + "\n")
        fd.write( "  scientific axes=clean,\n")
        fd.write( "  y axis={\n")
        fd.write( "      ticks={\n")
        fd.write( "         tick unit=\\%,\n")
        fd.write( "      },\n")
        fd.write( "      grid={minor={at={%s}}},\n" %
                  ", ".join("%.3f" % b[1]
                            for b in bench
                            if min(points) <= b[1] <= max(points)))
        fd.write( "    length=5cm,\n")
        fd.write( "    },\n")
        fd.write( "  x axis={\n")
        fd.write( "    ticks={major at={%s},node style={rotate=45,anchor=east}},\n" %
                  (",".join("%u as %s" %
                            (i,
                             mk_cvc4_shortname(data[i]["prover_bin"]))
                            for i in xrange(len(data)))))
        fd.write( "    length=8cm,\n")
        fd.write( "  },\n")
        fd.write("  visualize as line/.list={main},\n")
        fd.write("  main={style=%s},\n" % color)
        fd.write("] data [set=main] {\n")
        fd.write("x, y\n")
        for x, y in enumerate(points):
            fd.write("%.3f, %.3f\n" % (x, y))
        fd.write("} info {\n")
        for b in bench:
            if min(points) <= b[1] <= max(points) and b[1] > 0:
                fd.write("\\node")
                fd.write("[anchor=west,text width=1.5cm,fill=Altran1!10,")
                fd.write("rounded corners] at ")
                fd.write("(visualization cs: x=%.3f,y=%.3f) {\\small %s};\n" %
                         (float(len(data) - 1) + 0.1,
                          b[1],
                          mk_solver_name(b[0])))
        fd.write("};\n")
        fd.write("\\end{tikzpicture}\n")
        fd.write("\\end{center}\n")

    # Progress summary
    for cat in ("solved", "error", "unsound"):
        mk_progress_table(cat)

    # Plot of over various CVC4 versions
    for cat in COMPARISON_CATS:
        fd.write("\\begin{frame}[fragile]{FP progress in CVC4}")
        fd.write("{%s over time (average of averages)}\n" % cat.capitalize())
        mk_plot(cat, ("AnSecondaryGreen"
                      if cat == "solved"
                      else "AnSecondaryRed"))
        fd.write("\\end{frame}\n\n")

        if cat == "solved":
            for group in GROUPS:
                if not group.startswith("industrial_"):
                    continue
                fd.write("\\begin{frame}[fragile]{FP progress in CVC4}")
                fd.write("{VCs solved on %s}\n" % mk_bench_name(group))
                mk_plot(cat, "AnSecondaryGreen", group=group)
                fd.write("\\end{frame}\n\n")


def mk_competition_slides(fd):
    competitors = sorted([data[-1]] + other_data,
                         cmp=lambda a, b: cmp(a["prover_kind"],
                                              b["prover_kind"]))
    solvers = sorted(c["prover_kind"] for c in competitors)

    # def calculate_unique_solutions():
    #     verdicts = {}
    #     for c in competitors:
    #         for bench, verd in c["verdicts_processed"].iteritems():
    #             if bench not in verdicts:
    #                 verdicts[bench] = set()
    #             if verd in ("sat", "unsat"):
    #                 verdicts[bench].add(c["prover"]["kind"])

    #     unique_total = {}
    #     unique_cat   = {}
    #     for c in competitors:
    #         unique_total[c["prover"]["kind"]] = 0
    #         for cat in c["details"]:
    #             if cat not in unique_cat:
    #                 unique_cat[cat] = {}
    #             unique_cat[cat][c["prover"]["kind"]] = 0

    #     for bench, answers in verdicts.iteritems():
    #         if len(answers) == 1:
    #             cat    = cat_from_benchmark_name(bench)
    #             solver = list(answers)[0]

    #             unique_total[solver] += 1
    #             unique_cat[cat][solver] += 1

    #     return unique_cat, unique_total


    def mk_table(criteria):
        t = TikzTable(title      = "Benchmark",
                      columns    = solvers,
                      col_fmt_fn = mk_solver_name)

        # Add result rows
        for group in GROUPS:
            if (criteria == "unsound" and
                not competitors[0]["group_summary"][group]["annotated"]):
                continue

            data  = {}
            notes = {}

            for c in competitors:
                if not c["group_summary"][group]["participated"]:
                    continue

                solver = c["prover_kind"]

                kind = "average" if criteria == "solved" else "score"

                data[solver] = c["group_summary"][group][kind][criteria]
                if c["group_summary"][group]["dialect"] > 0:
                    notes[solver] = "*"

            t.add_row(title     = mk_bench_name(group),
                      data      = data,
                      format_fn = mk_fmt_function(criteria),
                      coloring  = mk_coloring(criteria),
                      notes     = notes)

        # Add summary row
        data = {c["prover_kind"] : c["total_summary"]["average"][criteria]
                for c in competitors}

        t.start_footer()
        t.add_row(title     = "Summary",
                  data      = data,
                  format_fn = format_fn_totals,
                  coloring  = mk_coloring(criteria))

        fd.write(t.emit())

    # def mk_unique_solutions_table():
    #     def format_fn(item):
    #         return "%u" % item

    #     t = TikzTable(title      = "Benchmark",
    #                   columns    = solvers,
    #                   col_fmt_fn = mk_solver_name)

    #     unique_cat, unique_total = calculate_unique_solutions()

    #     # Add result rows
    #     for group in GROUPS:
    #         data = {}
    #         notes = {}

    #         for c in competitors:
    #             if not c["tried"][group]:
    #                 continue

    #             solver = c["prover"]["kind"]

    #             data[solver] = unique_cat[group][solver]
    #             if c["snowflakes"][group] > 0:
    #                 notes[solver] = "*"

    #         t.add_row(title     = mk_bench_name(group),
    #                   data      = data,
    #                   format_fn = format_fn,
    #                   coloring  = COL_AWARD_HIGH,
    #                   notes     = notes)

    #     # Add summary row
    #     data = {}
    #     for c in competitors:
    #         solver = c["prover"]["kind"]
    #         data[solver] = unique_total[solver]

    #     t.start_footer()
    #     t.add_row(title     = "Total",
    #               data      = data,
    #               format_fn = format_fn,
    #               coloring  = COL_AWARD_HIGH)

    #     fd.write(t.emit())

    ##########################################################################

    # def mk_detailed_unsoundness_table(cat):
    #     t = TikzTable(title      = "Benchmark",
    #                   columns    = solvers,
    #                   col_fmt_fn = mk_solver_name)

    #     # Add result rows
    #     for group in GROUPS:
    #         if group in NON_ANNOTATED_TESTS:
    #             continue

    #         data = {}
    #         notes = {}

    #         for c in competitors:
    #             if not c["tried"][group]:
    #                 continue

    #             solver = c["prover"]["kind"]

    #             data[solver] = c["unsoundness"][group]["wrong_%s" % cat]
    #             if c["snowflakes"][group] > 0:
    #                 notes[solver] = "*"

    #         t.add_row(title     = mk_bench_name(group),
    #                   data      = data,
    #                   format_fn = mk_fmt_function("unsound"),
    #                   coloring  = COL_ERROR,
    #                   notes     = notes)

    #     fd.write(t.emit())

    # Table comparing all solvers
    for cat in COMPARISON_CATS:
        fd.write("\\begin{frame}{Benchmarks}{With status `%s'}\n" % cat)
        fd.write("\\begin{center}\n")
        mk_table(cat)
        fd.write("\\end{center}\n")
        fd.write("$^*$) uses different VCs\n")
        fd.write("\\end{frame}\n\n")

        # if cat == "solved":
        #     fd.write("\\begin{frame}{Benchmarks}{Unique solutions}\n")
        #     fd.write("\\begin{center}\n")
        #     mk_unique_solutions_table()
        #     fd.write("\\end{center}\n")
        #     fd.write("$^*$) uses different VCs\n")
        #     fd.write("\\end{frame}\n\n")

        # elif cat == "unsound":
        #     fd.write("\\begin{frame}{Benchmarks}{Incorrect `unsat' results - these would be really bad for \\spark}\n")
        #     fd.write("\\begin{center}\n")
        #     mk_detailed_unsoundness_table("unsat")
        #     fd.write("\\end{center}\n")
        #     fd.write("$^*$) uses different VCs\n")
        #     fd.write("\\end{frame}\n\n")

        #     fd.write("\\begin{frame}{Benchmarks}{Incorrect `sat' results}\n")
        #     fd.write("\\begin{center}\n")
        #     mk_detailed_unsoundness_table("sat")
        #     fd.write("\\end{center}\n")
        #     fd.write("$^*$) uses different VCs\n")
        #     fd.write("\\end{frame}\n\n")


def mk_cactus_slides(fd):
    competitors = sorted([data[-1]] + other_data,
                         cmp=lambda a, b: cmp(a["prover_kind"],
                                              b["prover_kind"]))
    solvers = sorted(c["prover_kind"] for c in competitors)

    def h(solver):
        return "sol%u" % solvers.index(solver)

    def mk_plot(group):
        datasets = []

        for data in competitors:
            results = []
            expected = 0
            for g in GROUPS:
                if group is not None and group != g:
                    continue
                expected += data["group_summary"][g]["score"]["solved"]
                for b in data["group_results"][g]:
                    if data["group_results"][g][b]["score"] == "s":
                        results.append(data["group_results"][g][b]["time"])
            results.sort()
            assert len(results) == expected

            points = []  # (count, time)
            for t in results:
                if len(points) == 0:
                    points.append([1, t])
                elif points[-1][1] == t:
                    points[-1][0] += 1
                else:
                    points.append([points[-1][0] + 1, t])
            assert len(points) == 0 or points[-1][0] == expected

            if len(points) > 1:
                datasets.append((data["prover_kind"],
                                 points))

        if len(datasets) == 0:
            return

        fd.write("\\begin{frame}[fragile]{Cactus plot}{%s}\n" %
                 ("Overall" if group is None else mk_bench_name(group)))
        fd.write("\\begin{center}\n")

        fd.write("\\begin{tikzpicture}\n")
        fd.write("\\datavisualization [\n")
        fd.write("  scientific axes=clean,\n")
        fd.write("  x axis={\n")
        fd.write("    length=6cm,\n")
        fd.write("    label={instances solved},\n")
        fd.write("    },\n")
        fd.write("  y axis={\n")
        fd.write("    length=6cm,\n")
        fd.write("    label={time},\n")
        fd.write("    ticks={tick unit=s},\n")
        fd.write("  },\n")
        fd.write("  visualize as line/.list={%s},\n" %
                 ",".join(map(h, (d[0] for d in datasets))))
        fd.write("  legend={right},\n")
        for solver, _ in datasets:
            fd.write("  %s={label in legend={text=%s}},\n" %
                     (h(solver), mk_solver_name(solver)))
        fd.write("  style sheet=strong colors\n")
        fd.write("]\n")

        for solver, points in datasets:
            fd.write("data [set=%s] {\n" % h(solver))
            fd.write("  x, y\n")
            for x, y in points:
                fd.write("  %u, %.2f\n" % (x, y))
            fd.write("}\n")

        fd.write(";\n")
        fd.write("\\end{tikzpicture}\n")

        fd.write("\\end{center}\n")
        fd.write("\\end{frame}\n\n")

    for group in GROUPS:
        mk_plot(group)
    mk_plot(None)

def main():
    ap = argparse.ArgumentParser()
    options = ap.parse_args()

    with open("fp_progress.tex", "w") as fd:
        fd.write("\\documentclass{beamer}\n")
        fd.write("\\input{altran-beamer}\n")
        fd.write("\\usepackage{tikz}\n")
        fd.write("\\usetikzlibrary{datavisualization}\n")
        fd.write("\\author{Florian Schanda}\n")
        fd.write("\\title{CVC4 IEEE-754 implementation}\n")
        fd.write("\\subtitle{Current status and benchmarks}\n")
        fd.write("\\begin{document}\n\n")

        fd.write("\\maketitle\n\n")

        if len(data) > 1:
            fd.write("\\section{CVC4 Progress}\n\n")
            mk_progress_slides(fd)

        if len(other_data) >= 1:
            fd.write("\\section{Comparisons}\n\n")
            mk_competition_slides(fd)

        if len(data) >= 1 or len(other_data) >= 1:
            fd.write("\\section{Cactus plots}\n\n")
            mk_cactus_slides(fd)

        fd.write("\\end{document}\n")

if __name__ == "__main__":
    main()
