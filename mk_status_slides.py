#!/usr/bin/env python
##############################################################################
##                                                                          ##
##                            smtlib_schanda                                ##
##                                                                          ##
##              Copyright (C) 2017-2018, Altran UK Limited                  ##
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

from common import load_benchmark_status, load_results, list_results, mk_virtual_best_solver
from tikztable import *

CONFIGURATIONS = list_results()
BENCHMARKS = load_benchmark_status()

data = [load_results(solver_kind, solver_bin, BENCHMARKS)
        for solver_kind, solver_bin in CONFIGURATIONS
        if solver_kind == "cvc4"]

other_data = [load_results(solver_kind, solver_bin, BENCHMARKS)
              for solver_kind, solver_bin in CONFIGURATIONS
              if solver_kind != "cvc4"]

other_data.append(mk_virtual_best_solver(other_data + [data[-1]],
                                         BENCHMARKS))

COMPARISON_CATS = ("solved", "unknown", "timeout", "oom", "error", "unsound")

GROUPS = sorted(data[-1]["group_summary"])

def mk_bench_name(cat):
    mapping = {
        "crafted"        : "Schanda",
        "nyxbrain"       : "NyxBrain",
        "random"         : "PyMPF",
        "random_ext"     : "PyMPF (extensions)",
        "cbmc"           : "{\\sc cbmc}",
        "spark_2014"     : "{\\sc Spark~FP}",
        "spark_2014_qf"  : "{\\sc Spark~FP~(QF)}",
        "spark_2014_all" : "{\sc Spark~ALL}",
    }
    if cat in mapping:
        return mapping[cat]
    else:
        return cat.capitalize().replace("_qf", "~(QF)").replace("_", "~")

def mk_solver_name(nam):
    return {
        "vbs"            : "Virtual best",
        "cvc4"           : "{\\sc cvc4} (${\\mathbb F}$)",
        "oldfp"          : "{\\sc cvc4} (${\\mathbb R}$)",
        "nocbqi"         : "{\\sc cvc4} --nocbqi",
        "z3"             : "Z3",
        "z3_smallfloats" : "Z3 (SmallFloat)",
        "colibri"        : "Colibri",
        "mathsat"        : "MathSAT",
        "mathsat_acdl"   : "MathSAT (ACDL)",
        "cbmc"           : "{\\sc cbmc}",
        "cbmc_refine"    : "{\\sc cbmc} --refine",
        "altergo"        : "Alt-Ergo 1.3",
        "altergo-fp"     : "Alt-Ergo FPA",
        "gosat"          : "goSAT",
        "sonolar"        : "{\\sc sonolar}",
    }.get(nam, nam)

def mk_coloring(criteria):
    if criteria == "solved":
        return COL_AWARD_HIGH
    elif criteria in ("timeout", "oom", "unknown"):
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
                tmp = "%.1f\\%%" % item
                if tmp == "100.0\\%":
                    tmp = "$>$99.9\\%"
                return tmp
        elif criteria in ("error", "unsound") and item == 0:
            return "$\checkmark$"
        else:
            return "%u" % item
    return format_fn

def format_fn_totals(item):
    return "%.0f\\%%" % item

def mk_cvc4_shortname(prover_bin):
    tmp = prover_bin.split("_")
    if tmp[-1].isdigit():
        return "-".join(tmp[-2:])
    else:
        return "-".join(tmp[-3:])

def mk_progress_slides(fd):
    versions = [data[0], data[-1]]

    # Table with Benchmark, (Old) Solved%, (New) Solved%
    def mk_progress_table(criteria):
        assert criteria in ("solved", "unknown", "error",
                            "timeout", "oom", "unsound")

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
        fd.write(t.emit() + "\n")
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
        fd.write( "    ticks={major at={%s},node style={rotate=60,anchor=east,font=\\tiny}},\n" %
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
                fd.write("[anchor=west,text width=1.75cm,fill=Altran1!10,")
                fd.write("rounded corners] at ")
                fd.write("(visualization cs: x=%.3f,y=%.3f) {\\fontsize{5}{5}\\selectfont %s};\n" %
                         (float(len(data) - 1) + 0.1,
                          b[1],
                          mk_solver_name(b[0])))
        fd.write("};\n")
        fd.write("\\end{tikzpicture}\n")
        fd.write("\\end{center}\n")

    # Progress summary
    fd.write("\\subsection{Progress from start}\n")
    for cat in ("solved", "error", "unsound"):
        mk_progress_table(cat)

    # Plot of over various CVC4 versions
    fd.write("\\subsection{Progress over time}\n")
    for cat in COMPARISON_CATS:
        fd.write("\\begin{frame}[fragile]{FP progress in CVC4}")
        fd.write("{%s over time (average of averages)}\n" % cat.capitalize())
        mk_plot(cat, ("AnSecondaryGreen"
                      if cat == "solved"
                      else "AnSecondaryRed"))
        fd.write("\\end{frame}\n\n")

        if cat == "solved":
            for group in GROUPS:
                if group.startswith("industrial_") or group.startswith("spark_2014"):
                    fd.write("\\begin{frame}[fragile]{FP progress in CVC4}")
                    fd.write("{VCs solved on %s}\n" % mk_bench_name(group))
                    mk_plot(cat, "AnSecondaryGreen", group=group)
                    fd.write("\\end{frame}\n\n")

def mk_csf_slides(fd):
    def get_cat(bm):
        name = BENCHMARKS[bm]["name"]
        assert "sha<" not in name
        assert (name.startswith("random/") or
                name.startswith("random_ext/") or
                name.startswith("wintersteiger/") or
                name.startswith("nyxbrain/"))

        _, cat, fn = name.split("/")

        if name.startswith("nyxbrain"):
            if cat != "executable-tests":
                return None
            comp = fn.split("-")
            assert comp[0] == "testSMT"
            if comp[1] == "SMT":
                cat = comp[1] + "-" + comp[2]
            else:
                cat = comp[1]

        if name.startswith("wintersteiger"):
            cat = {"abs"        : "fp.abs",
                   "add"        : "fp.add",
                   "div"        : "fp.div",
                   "eq"         : "fp.eq",
                   "fma"        : "fp.fma",
                   "gt"         : "fp.gt",
                   "lt"         : "fp.lt",
                   "max"        : "fp.max",
                   "min"        : "fp.min",
                   "mul"        : "fp.mul",
                   "rem"        : "fp.rem",
                   "sqrt"       : "fp.sqrt",
                   "sub"        : "fp.sub",
                   "toIntegral" : "fp.roundToIntegral"}[cat]
        elif name.startswith("nyxbrain"):
            cat = {'IEE754_equal'       : "fp.eq",
                   'SMT-LIB_equal'      : "smtlib.eq",
                   'absolute'           : "fp.abs",
                   'add'                : "fp.add",
                   'isInfinite'         : "fp.isInfinite",
                   'isNaN'              : "fp.isNaN",
                   'isNegative'         : "fp.isNegative",
                   'isNormal'           : "fp.isNormal",
                   'isPositive'         : "fp.isPositive",
                   'isSubnormal'        : "fp.isSubnormal",
                   'isZero'             : "fp.isZero",
                   'less_than'          : "fp.lt",
                   'less_than_or_equal' : "fp.leq",
                   'multiply'           : "fp.mul",
                   'negate'             : "fp.neg",
                   'subtract'           : "fp.sub",
                   'unpackPack'         : None}[cat]
        return cat

    # Coverage results will be random benchmark results
    solved = {}
    total  = {}
    for group in ("random", "random_ext", "wintersteiger", "nyxbrain"):
        if group not in data[-1]["group_results"]:
            continue
        for bm, res in data[-1]["group_results"][group].iteritems():
            cat = get_cat(bm)
            if cat is None:
                continue
            total[cat] = total.get(cat, 0) + 1
            solved[cat] = solved.get(cat, 0) + (1 if res["score"] == "s" else 0)
    subcats = set(total)

    percent = {cat : float(solved[cat] * 100) / float(total[cat])
               for cat in subcats}

    def mk_coord(x, y):
        return "(%.3f, %.3f)" % (x / 15.0,
                                 -y * 0.6)

    ORDER = [
        "fp.isZero",
        "fp.isSubnormal",
        "fp.isNormal",
        "fp.isInfinite",
        "fp.isNaN",
        "fp.isNegative",
        "fp.isPositive",
        "fp.eq",
        "smtlib.eq",
        "fp.lt",
        "fp.leq",
        "fp.gt",
        "fp.geq",
        "fp.abs",
        "fp.neg",
        "fp.sqrt",
        "fp.roundToIntegral",
        "fp.add",
        "fp.sub",
        "fp.mul",
        "fp.div",
        "fp.rem",
        "fp.min",
        "fp.max",
        "fp.fma",
        "fp.cast",
        "fp.from.binary",
        "fp.from.real",
        "fp.to.real",
        "fp.from.sbv",
        "fp.to.sbv",
        "fp.from.ubv",
        "fp.to.ubv",
        "fp.isFinite",
        "fp.isIntegral",
        "fp.from.int",
        "fp.to.int",
        "fp.nextUp",
        "fp.nextDown",
    ]
    ORDER = [x for x in ORDER if x in subcats] # robustness
    assert set(ORDER) == set(subcats)

    TXT = {
        "fp.abs"         : "$abs$",
        "fp.sqrt"        : "$\\surd$",
        "fp.neg"         : "unary $-$",
        "fp.nextUp"      : "$nextUp$",
        "fp.nextDown"    : "$nextDown$",

        "fp.add"         : "$+$",
        "fp.sub"         : "$-$",
        "fp.div"         : "$\\div$",
        "fp.mul"         : "$\\times$",

        "fp.eq"          : "$=$",
        "smtlib.eq"      : "$\equiv$",

        "fp.fma"         : "$fma$",
        "fp.rem"         : "$remainder$",
        "fp.roundToIntegral" : "$rti$",

        "fp.lt"          : "$<$",
        "fp.gt"          : "$>$",
        "fp.leq"         : "$\le$",
        "fp.geq"         : "$\ge$",

        "fp.isZero"      : "$isZero$",
        "fp.isSubnormal" : "$isSubnormal$",
        "fp.isNormal"    : "$isNormal$",
        "fp.isInfinite"  : "$isInfinite$",
        "fp.isNaN"       : "$isNaN$",
        "fp.isNegative"  : "$isNegative$",
        "fp.isPositive"  : "$isPositive$",
        "fp.isFinite"    : "$isFinite$",
        "fp.isIntegral"  : "$\in \\mathbb{Z}$",

        "fp.min"         : "$min$",
        "fp.max"         : "$max$",

        "fp.cast"        : "$\\mathbb{F} \\rightarrow \\mathbb{F}$",

        "fp.from.binary" : "IEEE $\\rightarrow \\mathbb{F}$",
        "fp.from.sbv"    : "SBV $\\rightarrow \\mathbb{F}$",
        "fp.from.ubv"    : "UBV $\\rightarrow \\mathbb{F}$",
        "fp.from.real"   : "$\\mathbb{R} \\rightarrow \\mathbb{F}$",
        "fp.from.int"    : "$\\mathbb{Z} \\rightarrow \\mathbb{F}$",

        "fp.to.sbv"      : "$\\mathbb{F} \\rightarrow$ SBV",
        "fp.to.ubv"      : "$\\mathbb{F} \\rightarrow$ UBV",
        "fp.to.real"     : "$\\mathbb{F} \\rightarrow \\mathbb{R}$",
        "fp.to.int"      : "$\\mathbb{F} \\rightarrow \\mathbb{Z}$",
    }

    fd.write("\\subsection{Coverage}\n")

    ITEMS_PER_SLIDE = 11
    BAR_WIDTH = 0.6
    for n in xrange(0, len(ORDER), ITEMS_PER_SLIDE):
        slide_cats = ORDER[n:min(len(ORDER), n+ITEMS_PER_SLIDE)]

        fd.write("\\begin{frame}{Critical Success Factors for CVC4}")
        fd.write("{Aggregating results from PyMPF, NyxBrain, and Wintersteiger}\n")
        fd.write("\\begin{center}\n")
        fd.write("\\begin{tikzpicture}\n")

        for i, cat in enumerate(slide_cats):
            if percent[cat] == 100.0:
                col = "AnSecondaryGreen"
            elif percent[cat] > 90.0:
                col = "AnSecondaryYellow"
            else:
                col = "AnSecondaryRed"

            fd.write("\\draw[fill=%s] %s -- %s -- %s -- %s -- cycle;\n" %
                     (col,
                      mk_coord(0, i),
                      mk_coord(percent[cat], i),
                      mk_coord(percent[cat], i + BAR_WIDTH),
                      mk_coord(0, i + BAR_WIDTH)));
            if percent[cat] < 100.0:
                score = "%.2f\\%%" % percent[cat]
            else:
                score = "$\checkmark$"
            fd.write("\\node[font=\\tiny] at %s {%s};\n" %
                     (mk_coord(50, i + BAR_WIDTH * 0.5),
                      score))
            fd.write("\\draw %s -- %s -- %s -- %s -- cycle;\n" %
                     (mk_coord(0, i),
                      mk_coord(100, i),
                      mk_coord(100, i + BAR_WIDTH),
                      mk_coord(0, i + BAR_WIDTH)));
            fd.write("\\node[anchor=west,text width=2cm,font=\\tiny] at %s {%s};\n" %
                     (mk_coord(100, i + BAR_WIDTH * 0.5),
                      TXT.get(cat, cat)))
            if total[cat] <= 1000:
                testcount = "%u tests" % total[cat]
            else:
                testcount = "%.1fk tests" % (float(total[cat]) / 1000.0)
            fd.write("\\node[anchor=east,text width=2cm,align=right,font=\\tiny] at %s {%s};\n" %
                     (mk_coord(0, i + BAR_WIDTH * 0.5),
                      testcount))

        fd.write("\\end{tikzpicture}\n")
        fd.write("\\end{center}\n")
        fd.write("\\end{frame}\n\n")



def mk_competition_slides(fd):
    competitors = sorted([data[-1]] + other_data,
                         cmp=lambda a, b: cmp(a["prover_kind"],
                                              b["prover_kind"]))
    solvers = sorted((c["prover_kind"] for c in competitors),
                     cmp=lambda a, b: cmp(a.replace("vbs", "zzz"),
                                          b.replace("vbs", "zzz")))

    # Produce table for each category over benchmark/solver
    def mk_cat_table(criteria):
        t = TikzTable(title      = "Benchmark",
                      columns    = [s for s in solvers
                                    if "cbmc" not in s],
                      col_fmt_fn = mk_solver_name,
                      noncomp    = ["vbs"])

        # Add result rows
        for group in GROUPS:
            if (criteria == "unsound" and
                not competitors[0]["group_summary"][group]["annotated"]):
                continue

            tbl_data  = {}
            notes = {}

            for c in competitors:
                solver = c["prover_kind"]
                if not c["group_summary"][group]["participated"]:
                    continue
                if "cbmc" in solver:
                    continue

                kind = "average" if criteria == "solved" else "score"

                tbl_data[solver] = c["group_summary"][group][kind][criteria]
                if c["group_summary"][group]["dialect"] > 0:
                    notes[solver] = "*"

            t.add_row(title     = mk_bench_name(group),
                      data      = tbl_data,
                      format_fn = mk_fmt_function(criteria),
                      coloring  = mk_coloring(criteria),
                      notes     = notes)

        # Add summary row
        tbl_data = {c["prover_kind"] : c["total_summary"]["average"][criteria]
                    for c in competitors
                    if "cbmc" not in c["prover_kind"]}

        t.start_footer()
        t.add_row(title     = "Summary",
                  data      = tbl_data,
                  format_fn = format_fn_totals,
                  coloring  = mk_coloring(criteria))

        fd.write(t.emit() + "\n")

    # Make focussed on individual benchmarks, looking at solvers / categories
    def mk_bench_table(group):
        def fmt_time(seconds):
            flt_seconds = seconds
            seconds = int(seconds)

            minutes = seconds / 60
            seconds = seconds % 60

            hours   = minutes / 60
            minutes = minutes % 60

            if hours > 0:
                return "%u:%02u:%02u" % (hours, minutes, seconds)
            elif minutes > 0:
                return "%u:%02u" % (minutes, seconds)
            else:
                return "0:%.2f" % flt_seconds

        def rank_solver(a, b):
            if a["prover_kind"] == b["prover_kind"]:
                return 0
            elif a["prover_kind"] == "vbs":
                return 1
            elif b["prover_kind"] == "vbs":
                return -1
            elif (a["group_summary"][group]["score"]["unsound"] > 0 and
                  b["group_summary"][group]["score"]["unsound"] == 0):
                return 1
            elif (a["group_summary"][group]["score"]["unsound"] == 0 and
                  b["group_summary"][group]["score"]["unsound"] > 0):
                return -1
            else:
                # Sort by solved first
                tmp = -cmp(a["group_summary"][group]["score"]["solved"],
                           b["group_summary"][group]["score"]["solved"])
                if tmp != 0:
                    return tmp

                # Sort by time
                tmp = cmp(a["group_summary"][group]["time"],
                           b["group_summary"][group]["time"])
                if tmp != 0:
                    return tmp

                # Finally sort by name
                return cmp(a["prover_kind"], b["prover_kind"])


        solver_order = sorted(competitors, cmp=rank_solver)

        columns = [c["prover_kind"] for c in solver_order
                   if c["group_summary"][group]["participated"]]

        def build(good=None, bad=None):
            t = TikzTable(title      = "Solver",
                          columns    = columns,
                          col_fmt_fn = mk_solver_name,
                          noncomp    = ["vbs"],
                          transposed = True,
                          fmt_good   = good,
                          fmt_bad    = bad)

            for cat in COMPARISON_CATS:
                row = {}
                notes = {}
                for c in competitors:
                    if not c["group_summary"][group]["participated"]:
                        continue

                    if cat == "solved":
                        row[c["prover_kind"]] =\
                          c["group_summary"][group]["average"][cat]
                    else:
                        row[c["prover_kind"]] =\
                          c["group_summary"][group]["score"][cat]
                    if cat == "solved" and c["group_summary"][group]["dialect"] > 0:
                        notes[c["prover_kind"]] = "*"

                t.add_row(title      = cat.capitalize(),
                          data       = row,
                          format_fn  = mk_fmt_function(cat),
                          coloring   = mk_coloring(cat),
                          notes      = notes)

            row = {}
            for c in competitors:
                if not c["group_summary"][group]["participated"]:
                    continue
                row[c["prover_kind"]] = sum(map(lambda x: x["time"],
                                                c["group_results"][group].itervalues()))

            t.add_row(title      = "Total time (m:s)",
                      data       = row,
                      format_fn  = fmt_time,
                      coloring   = COL_AWARD_LOW,
                      notes      = {})

            return t

        tbl_for_slides = build()
        fd.write(tbl_for_slides.emit() + "\n")

        tbl_for_paper = build(good=lambda x: "\\textbf{%s}" % x,
                              bad=lambda x: x)
        tbl_for_paper.emit_plain("stats_table_bench_%s.tex" % group)

    # Table comparing all solvers
    fd.write("\\subsection{Comparison over status}\n")
    for cat in COMPARISON_CATS:
        fd.write("\\begin{frame}{Benchmarks}{With status `%s'}\n" % cat)
        fd.write("\\begin{adjustwidth}{-1cm}{-1cm}\n")
        fd.write("\\begin{center}\n")
        mk_cat_table(cat)
        fd.write("\\end{center}\n")
        fd.write("\\begin{center}\n")
        fd.write("\\footnotesize $^*$) uses different VCs\n")
        fd.write("\\end{center}\n")
        fd.write("\\end{adjustwidth}\n")
        fd.write("\\end{frame}\n\n")

    # Table comparing all benchmarks
    fd.write("\\subsection{Comparison over benchmark}\n")
    for group in GROUPS:
        # Slides
        total = {"s" : 0, "u" : 0, "?" : 0}
        for bm in data[-1]["group_results"][group]:
            total[BENCHMARKS[bm]["status"]] += 1
        total_problems = sum(total.itervalues())
        assert sum(data[-1]["group_summary"][group]["score"].itervalues()) == total_problems
        summary = "%u problems" % total_problems
        tmp = []
        for cat in "su?":
            if total[cat] == total_problems:
                tmp.append("all %s" % {"s" : "SAT",
                                       "u" : "UNSAT",
                                       "?" : "unknown"}[cat])
            elif total[cat] > 0:
                tmp.append("%.1f\\%% %s" % (float(total[cat] * 100) /
                                            float(total_problems),
                                            {"s" : "SAT",
                                             "u" : "UNSAT",
                                             "?" : "unknown"}[cat]))
        summary += " (%s)" % ", ".join(tmp)

        with open("stats_bench_%s.tex" % group, "w") as stats_fd:
            stats_fd.write("\\def\\benchName{%s}\n" % mk_bench_name(group))
            stats_fd.write("\\def\\benchProblems{%u}\n" % total_problems)
            stats_fd.write("\\def\\benchSummary{%s}\n" % ", ".join(tmp))

        fd.write("\\begin{frame}{Benchmark %s}{%s}\n" %
                 (mk_bench_name(group),
                  summary))
        fd.write("\\begin{adjustwidth}{-1cm}{-1cm}\n")
        fd.write("\\begin{center}\n")
        mk_bench_table(group)
        fd.write("\\end{center}\n")
        fd.write("\\begin{center}\n")
        fd.write("\\footnotesize $^*$) uses different VCs\n")
        fd.write("\\end{center}\n")
        fd.write("\\end{adjustwidth}\n")
        fd.write("\\end{frame}\n\n")


def mk_cactus_slides(fd):
    def sort_competition(a, b):
        if a["prover_kind"] == "vbs":
            return -1
        elif b["prover_kind"] == "vbs":
            return 1
        else:
            return cmp(a["prover_kind"], b["prover_kind"])

    competitors = sorted([data[-1]] + other_data,
                         cmp=sort_competition)
    solvers = sorted(c["prover_kind"] for c in competitors)

    def h(solver):
        return "sol%u" % solvers.index(solver)

    def mk_plot(group):
        datasets = []
        total = sum(len(competitors[0]["group_results"][g])
                    for g in GROUPS
                    if group is None or g == group)

        def scale_inst(n):
            if total > 5000:
                return n / 1000.0
            else:
                return n

        for data in competitors:
            results = []
            expected = 0
            for g in GROUPS:
                if group is not None and group != g:
                    continue
                if not data["group_summary"][g]["participated"]:
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
        fd.write("    include value=%.2f,\n" % scale_inst(total))
        if total > 5000:
            fd.write("    ticks={tick unit=k},\n")
        fd.write("    },\n")
        fd.write("  y axis={\n")
        fd.write("    length=6cm,\n")
        fd.write("    label={time},\n")
        fd.write("    ticks={tick unit=s},\n")
        fd.write("  },\n")
        for solver, _ in datasets:
            fd.write("  visualize as %s=%s,\n" %
                     ("smooth line" if solver == "vbs" else "line",
                      h(solver)))
        fd.write("  legend={right},\n")
        for solver, _ in datasets:
            atr = ["label in legend={text=%s}" % mk_solver_name(solver)]
            if solver == "vbs":
                atr.append("style={dashed}")
            fd.write("  %s={%s},\n" % (h(solver), ",".join(atr)))
        fd.write("  style sheet=altran\n")
        fd.write("]\n")

        for solver, points in datasets:
            fd.write("data [set=%s] {\n" % h(solver))
            fd.write("  x, y\n")
            for x, y in points:
                fd.write("  %.2f, %.2f\n" % (scale_inst(x), y))
            fd.write("}\n")

        fd.write(";\n")
        fd.write("\\end{tikzpicture}\n")

        fd.write("\\end{center}\n")
        fd.write("\\end{frame}\n\n")

    for group in GROUPS:
        if group in ("random", "wintersteiger", "nyxbrain"):
            # These are really not very interesting as cactus plots,
            # since they are correctness benchmarks not performance
            # benchmarks
            continue
        mk_plot(group)
    #mk_plot(None)

def main():
    ap = argparse.ArgumentParser()
    options = ap.parse_args()

    with open("fp_progress.tex", "w") as fd:
        fd.write("\\documentclass{beamer}\n")
        fd.write("\\input{altran-beamer}\n")
        fd.write("\\usepackage{tikz}\n")
        fd.write("\\usepackage{changepage}\n")
        fd.write("\\usetikzlibrary{datavisualization}\n")
        fd.write("\\pgfdvdeclarestylesheet{altran}{\n")
        fd.write("  1/.style={Altran1},\n")
        fd.write("  2/.style={Altran4},\n")
        fd.write("  3/.style={Altran6},\n")
        fd.write("  4/.style={Altran7},\n")
        fd.write("  5/.style={Altran8},\n")
        fd.write("  6/.style={Altran12},\n")
        fd.write("  7/.style={Altran5},\n")
        fd.write("  8/.style={Altran10},\n")
        fd.write("  default style/.style={black}\n")
        fd.write("}\n")
        fd.write("\\author{Florian Schanda}\n")
        fd.write("\\title{CVC4 IEEE-754 implementation}\n")
        fd.write("\\subtitle{Current status and benchmarks}\n")
        fd.write("\\begin{document}\n\n")

        fd.write("\\maketitle\n\n")

        if len(data) > 0:
            fd.write("\\section{CVC4 Progress}\n\n")
            if len(data) > 1:
                mk_progress_slides(fd)
            mk_csf_slides(fd)

        if len(other_data) >= 1:
            fd.write("\\section{Comparisons}\n\n")
            mk_competition_slides(fd)

        if len(data) >= 1 or len(other_data) >= 1:
            fd.write("\\section{Cactus plots}\n\n")
            mk_cactus_slides(fd)

        fd.write("\\end{document}\n")



if __name__ == "__main__":
    main()
