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

from tikztable import *

NON_ANNOTATED_TESTS = set(["griggio", "spark_2014_qf"])

def mk_bench_name(cat):
    return {
        "crafted"       : "schanda",
        "random"        : "PyMPF",
        "spark_2014"    : "{\\sc Spark~2014}",
        "spark_2014_qf" : "{\\sc Spark~QF}",
    }.get(cat, cat)

def mk_solver_name(nam):
    return {
        "cvc4"         : "{\sc cvc4}",
        "z3"           : "Z3",
        "colibri"      : "Colibri",
        "mathsat"      : "MathSAT",
        "mathsat_acdl" : "MathSAT (ACDL)",
        "altergo"      : "Alt-Ergo 1.3",
    }.get(nam, nam)

def is_cvc4_data(name):
    return (os.path.isfile(name) and
            name.startswith("data_fp_cvc4_") and
            name.endswith(".p"))

def is_other_data(name):
    return (os.path.isfile(name) and
            name.startswith("data_fp_") and
            name.endswith(".p") and
            not is_cvc4_data(name))

def mk_best_color(best, current):
    if current == best:
        return "g"
    else:
        return "n"

def mk_perc_color(before, after):
    if after < before:
        return "b"
    elif after > before or after == 100.0:
        return "g"
    else:
        return "n"

def mk_err_color(before, after):
    if after < before or after == 0:
        return "g"
    elif after > before:
        return "b"
    else:
        return "n"

def cat_from_benchmark_name(bench):
    cat = bench.split("/")[0]
    if cat == "spark_2014":
        if "QF_" in bench.split("/")[1]:
            cat += "_qf"
    return cat

def add_derived_stats(item):
    item["avav"] = {}
    item["tried"] = {}
    item["unsoundness"] = {}
    for suite in item["details"]:
        item["tried"][suite] = (item["details"][suite]["solved"] > 0 or
                                item["details"][suite]["timeout"] > 0 or
                                item["details"][suite]["unknown"] > 0 or
                                item["details"][suite]["unsound"] > 0)

        item["unsoundness"][suite] = {"wrong_sat"   : 0,
                                      "wrong_unsat" : 0}

    for bench, verdict in item["verdicts_processed"].iteritems():
        if verdict == "unsound":
            cat = cat_from_benchmark_name(bench)
            key = "wrong_%s" % item["verdicts"][bench]
            item["unsoundness"][cat][key] += 1

    for subcat in item["details"]["crafted"]:
        averages = [float(item["details"][cat][subcat] * 100) /
                    float(sum(item["details"][cat].itervalues()))
                    for cat in item["details"]
                    if item["tried"][cat]]
        item["avav"][subcat] = sum(averages) / float(len(averages))

data = []
for item in (e for e in sorted(os.listdir(".")) if is_cvc4_data(e)):
    with open(item, "rU") as fd_data:
        item = load(fd_data)
        add_derived_stats(item)
        data.append(item)

other_data = []
for item in (e for e in sorted(os.listdir(".")) if is_other_data(e)):
    with open(item, "rU") as fd_data:
        item = load(fd_data)
        add_derived_stats(item)
        other_data.append(item)

COMPARISON_CATS = ("solved", "timeout", "error", "unsound")

def mk_coloring(criteria):
    if criteria == "solved":
        return COL_AWARD_HIGH
    elif criteria in ("timeout", "unknown"):
        return COL_AWARD_LOW
    else:
        # error, unsound
        return COL_ERROR

def mk_fmt_function(criteria, bm_count=None):
    def format_fn(item):
        if criteria == "solved":
            perc = float(item * 100) / float(bm_count)
            if perc == 100.0:
                return "$\checkmark$"
            else:
                return "%.1f\\%%" % (float(item * 100) / float(bm_count))
        elif criteria in ("error", "unsound") and item == 0:
            return "$\checkmark$"
        else:
            return "%u" % item
    return format_fn

def mk_progress_slides(fd):
    def mk_shortname(prover_bin):
        return "-".join(prover_bin.split("_")[-2:])

    versions   = [data[0], data[-1]]
    benchmarks = sorted(versions[-1]["details"])

    # Table with Benchmark, (Old) Solved%, (New) Solved%
    def mk_progress_table(criteria):
        t = TikzTable(title      = "Benchmark",
                      columns    = [v["prover"]["bin"] for v in versions],
                      col_fmt_fn = mk_shortname)
        for benchmark in benchmarks:
            if criteria == "unsound" and benchmark in NON_ANNOTATED_TESTS:
                continue

            count = sum(versions[-1]["details"][benchmark].itervalues())
            tdata = {}
            for version in versions:
                tdata[version["prover"]["bin"]] = version["details"][benchmark][criteria]
            t.add_row(title     = mk_bench_name(benchmark),
                      data      = tdata,
                      format_fn = mk_fmt_function(criteria, count),
                      coloring  = mk_coloring(criteria))

        fd.write("\\begin{frame}{FP progress in CVC4}{%s}\n" % criteria.capitalize())
        fd.write("\\begin{center}\n")
        fd.write(t.emit())
        fd.write("\\end{center}\n")
        fd.write("\\end{frame}\n\n")

    def mk_plot(avav_key, color):
        fd.write("\\begin{center}\n")
        fd.write("\\begin{tikzpicture}\n")
        points = [r["avav"][avav_key] for r in data]
        bench = [(r["prover"]["kind"],
                  r["avav"][avav_key]) for r in other_data]
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
                             mk_shortname(data[i]["prover"]["bin"]))
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
                fd.write("\\node[anchor=west,text width=1.5cm,fill=Altran1!10,rounded corners] at (visualization cs: x=%.3f,y=%.3f) {\\small %s};\n" %
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
        fd.write("\\begin{frame}[fragile]{FP progress in CVC4}{%s over time (average of averages)}\n" % cat.capitalize())
        mk_plot(cat, ("AnSecondaryGreen"
                      if cat == "solved"
                      else "AnSecondaryRed"))
        fd.write("\\end{frame}\n\n")

def mk_competition_slides(fd):
    competitors = sorted([data[-1]] + other_data,
                         cmp=lambda a, b: cmp(a["prover"]["kind"],
                                              b["prover"]["kind"]))
    solvers    = [c["prover"]["kind"] for c in competitors]
    benchmarks = sorted(competitors[0]["details"])

    def calculate_unique_solutions():
        verdicts = {}
        for c in competitors:
            for bench, verd in c["verdicts_processed"].iteritems():
                if bench not in verdicts:
                    verdicts[bench] = set()
                if verd in ("sat", "unsat"):
                    verdicts[bench].add(c["prover"]["kind"])

        unique_total = {}
        unique_cat   = {}
        for c in competitors:
            unique_total[c["prover"]["kind"]] = 0
            for cat in c["details"]:
                if cat not in unique_cat:
                    unique_cat[cat] = {}
                unique_cat[cat][c["prover"]["kind"]] = 0

        for bench, answers in verdicts.iteritems():
            if len(answers) == 1:
                cat    = cat_from_benchmark_name(bench)
                solver = list(answers)[0]

                unique_total[solver] += 1
                unique_cat[cat][solver] += 1

        return unique_cat, unique_total

    def format_fn_totals(item):
        return "%.0f\\%%" % item

    def mk_table(criteria):
        t = TikzTable(title      = "Benchmark",
                      columns    = solvers,
                      col_fmt_fn = mk_solver_name)

        # Add result rows
        for benchmark in benchmarks:
            if criteria == "unsound" and benchmark in NON_ANNOTATED_TESTS:
                continue

            data = {}
            notes = {}
            bm_count = sum(competitors[0]["details"][benchmark].itervalues())

            for c in competitors:
                if not c["tried"][benchmark]:
                    continue

                solver = c["prover"]["kind"]

                data[solver] = c["details"][benchmark][criteria]
                if c["snowflakes"][benchmark] > 0:
                    notes[solver] = "*"

            def format_fn(item):
                if criteria == "solved":
                    perc = float(item * 100) / float(bm_count)
                    if perc == 100.0:
                        return "$\checkmark$"
                    else:
                        return "%.1f\\%%" % (float(item * 100) / float(bm_count))
                elif criteria in ("error", "unsound") and item == 0:
                    return "$\checkmark$"
                else:
                    return "%u" % item

            t.add_row(title     = mk_bench_name(benchmark),
                      data      = data,
                      format_fn = format_fn,
                      coloring  = mk_coloring(criteria),
                      notes     = notes)

        # Add summary row
        data = {}
        for c in competitors:
            solver = c["prover"]["kind"]
            data[solver] = c["avav"][criteria]

        t.start_footer()
        t.add_row(title     = "Summary",
                  data      = data,
                  format_fn = format_fn_totals,
                  coloring  = mk_coloring(criteria))

        fd.write(t.emit())

    def mk_unique_solutions_table():
        def format_fn(item):
            return "%u" % item

        t = TikzTable(title      = "Benchmark",
                      columns    = solvers,
                      col_fmt_fn = mk_solver_name)

        unique_cat, unique_total = calculate_unique_solutions()

        # Add result rows
        for benchmark in benchmarks:
            data = {}
            notes = {}

            for c in competitors:
                if not c["tried"][benchmark]:
                    continue

                solver = c["prover"]["kind"]

                data[solver] = unique_cat[benchmark][solver]
                if c["snowflakes"][benchmark] > 0:
                    notes[solver] = "*"

            t.add_row(title     = mk_bench_name(benchmark),
                      data      = data,
                      format_fn = format_fn,
                      coloring  = COL_AWARD_HIGH,
                      notes     = notes)

        # Add summary row
        data = {}
        for c in competitors:
            solver = c["prover"]["kind"]
            data[solver] = unique_total[solver]

        t.start_footer()
        t.add_row(title     = "Total",
                  data      = data,
                  format_fn = format_fn,
                  coloring  = COL_AWARD_HIGH)

        fd.write(t.emit())

    def mk_detailed_unsoundness_table(cat):
        t = TikzTable(title      = "Benchmark",
                      columns    = solvers,
                      col_fmt_fn = mk_solver_name)

        # Add result rows
        for benchmark in benchmarks:
            data = {}
            notes = {}

            for c in competitors:
                if not c["tried"][benchmark]:
                    continue

                solver = c["prover"]["kind"]

                data[solver] = c["unsoundness"][benchmark]["wrong_%s" % cat]
                if c["snowflakes"][benchmark] > 0:
                    notes[solver] = "*"

            t.add_row(title     = mk_bench_name(benchmark),
                      data      = data,
                      format_fn = mk_fmt_function("unsound"),
                      coloring  = COL_ERROR,
                      notes     = notes)

        fd.write(t.emit())

    # Table comparing all solvers
    for cat in COMPARISON_CATS:
        fd.write("\\begin{frame}{Benchmarks}{With status `%s'}\n" % cat)
        fd.write("\\begin{center}\n")
        mk_table(cat)
        fd.write("\\end{center}\n")
        fd.write("$^*$) uses different VCs\n")
        fd.write("\\end{frame}\n\n")

        if cat == "solved":
            fd.write("\\begin{frame}{Benchmarks}{Unique solutions}\n")
            fd.write("\\begin{center}\n")
            mk_unique_solutions_table()
            fd.write("\\end{center}\n")
            fd.write("$^*$) uses different VCs\n")
            fd.write("\\end{frame}\n\n")
        elif cat == "unsound":
            fd.write("\\begin{frame}{Benchmarks}{Incorrect `unsat' results - these would be really bad for \\spark}\n")
            fd.write("\\begin{center}\n")
            mk_detailed_unsoundness_table("unsat")
            fd.write("\\end{center}\n")
            fd.write("$^*$) uses different VCs\n")
            fd.write("\\end{frame}\n\n")

            fd.write("\\begin{frame}{Benchmarks}{Incorrect `sat' results}\n")
            fd.write("\\begin{center}\n")
            mk_detailed_unsoundness_table("sat")
            fd.write("\\end{center}\n")
            fd.write("$^*$) uses different VCs\n")
            fd.write("\\end{frame}\n\n")


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

        fd.write("\\end{document}\n")

if __name__ == "__main__":
    main()
