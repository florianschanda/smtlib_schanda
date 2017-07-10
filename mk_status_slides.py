#!/usr/bin/env python

import os
import argparse
from cPickle import load
from pprint import pprint

NON_ANNOTATED_TESTS = set(["griggio"])

def mk_bench_name(cat):
    return {"crafted"    : "schanda",
            "random"     : "PyMPF",
            "spark_2014" : "{\\sc Spark~2014}"}.get(cat, cat)

def mk_solver_name(nam):
    return {"cvc4"         : "{\sc cvc4}",
            "z3"           : "Z3",
            "colibri"      : "Colibri",
            "mathsat"      : "MathSAT",
            "mathsat_acdl" : "MS (ACDL)"}.get(nam, nam)

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

def add_avav(item):
    item["avav"] = {}
    for subcat in item["details"]["crafted"]:
        averages = [float(item["details"][cat][subcat] * 100) /
                    float(sum(item["details"][cat].itervalues()))
                    for cat in item["details"]]
        item["avav"][subcat] = sum(averages) / float(len(averages))

data = []
for item in (e for e in sorted(os.listdir(".")) if is_cvc4_data(e)):
    with open(item, "rU") as fd_data:
        item = load(fd_data)
        add_avav(item)
        data.append(item)

other_data = []
for item in (e for e in sorted(os.listdir(".")) if is_other_data(e)):
    with open(item, "rU") as fd_data:
        item = load(fd_data)
        add_avav(item)
        other_data.append(item)

def mk_progress_slides(fd):
    def mk_shortname(prover_bin):
        return "-".join(prover_bin.split("_")[-2:])

    # Table with Benchmark, (Old) Solved%, (New) Solved%
    fd.write("\\begin{frame}{FP progress in CVC4}{Solved}\n")
    fd.write("\\begin{center}\n")
    fd.write("\\begin{tabular}{>{\columncolor{Altran2}}rll}\n")
    fd.write("\\rowcolor{Altran2}\n")
    fd.write(r"Benchmark & %s & %s \\" %
             (mk_shortname(data[0]["prover"]["bin"]),
              mk_shortname(data[-1]["prover"]["bin"]))
             + "\n")
    for cat in sorted(data[0]["details"]):
        fd.write(mk_bench_name(cat) + " & ")
        row = [float(data[i]["details"][cat]["solved"] * 100) /
               float(sum(data[i]["details"][cat].itervalues()))
               for i in (0, -1)]
        s_row = ["%.1f\\%%" % item for item in row]
        s_row[1] = "\\t%s{%s}" % (mk_perc_color(row[0], row[1]),
                                  s_row[1])
        fd.write(" & ".join(s_row) + r"\\" + "\n")
    fd.write("\\end{tabular}\n")
    fd.write("\\end{center}\n")
    fd.write("\\end{frame}\n\n")

    # Unsound results
    fd.write("\\begin{frame}{FP progress in CVC4}{Errors and unsoundness}\n")
    fd.write("\\begin{center}\n")
    fd.write("\\begin{tabular}{>{\columncolor{Altran2}}rllll}\n")
    fd.write("\\rowcolor{Altran2}\n")
    fd.write(r"Benchmark & %s & & %s & \\" %
             (mk_shortname(data[0]["prover"]["bin"]),
              mk_shortname(data[-1]["prover"]["bin"]))
             + "\n")
    fd.write("\\rowcolor{Altran2}\n")
    fd.write(r"& error & unsound & error & unsound \\" + "\n")
    for cat in sorted(data[0]["details"]):
        fd.write(mk_bench_name(cat) + " & ")
        row = [data[0]["details"][cat]["error"],
               data[0]["details"][cat]["unsound"],
               data[-1]["details"][cat]["error"],
               data[-1]["details"][cat]["unsound"]]
        s_row = ["%u" % item for item in row]
        if cat in NON_ANNOTATED_TESTS:
            s_row[1] = ""
            s_row[3] = ""
        for i in (2, 3):
            s_row[i] = "\\t%s{%s}" % (mk_err_color(row[i - 2], row[i]),
                                      s_row[i])
        fd.write(" & ".join(s_row) + r"\\" + "\n")
    fd.write("\\end{tabular}\n")
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
        # fd.write( "         major={also at={%s}},\n" %
        #           ", ".join(("%.3f as %s" % (b[1], mk_solver_name(b[0]))
        #                     for b in bench
        #                     if min(points) <= b[1] <= max(points)))
        # )
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
        fd.write( "    length=9cm,\n")
        fd.write( "  },\n")
        fd.write("  visualize as line/.list={main},\n")
        fd.write("  main={style=%s},\n" % color)
        fd.write("] data [set=main] {\n")
        fd.write("x, y\n")
        for x, y in enumerate(points):
            fd.write("%.3f, %.3f\n" % (x, y))
        fd.write("} info {\n")
        for b in bench:
            if min(points) <= b[1] <= max(points):
                fd.write("\\node[anchor=west] at (visualization cs: x=%.3f,y=%.3f) {\scriptsize %s};\n" %
                         (float(len(data) - 1),
                          b[1],
                          mk_solver_name(b[0])))
        fd.write("};\n")
        fd.write("\\end{tikzpicture}\n")
        fd.write("\\end{center}\n")

    # Plot of over various CVC4 versions
    for cat in ("solved", "timeout", "unsound", "error"):
        fd.write("\\begin{frame}[fragile]{FP progress in CVC4}{%s over time (average over averages)}\n" % cat.capitalize())
        mk_plot(cat, ("AnSecondaryGreen"
                      if cat == "solved"
                      else "AnSecondaryRed"))
        fd.write("\\end{frame}\n\n")

def mk_competition_slides(fd):
    competitors = sorted([data[-1]] + other_data,
                         cmp=lambda a, b: cmp(a["prover"]["kind"],
                                              b["prover"]["kind"]))

    def mk_table(criteria):
        fd.write("\\small\n")
        fd.write("\\begin{tabular}{>{\columncolor{Altran2}}r%s}\n" %
                 ("l" * len(competitors)))
        fd.write("\\rowcolor{Altran2}\n")
        fd.write("Benchmark & ")
        fd.write(" & ".join(mk_solver_name(r["prover"]["kind"])
                            for r in competitors))
        fd.write(r"\\" + "\n")
        for cat in sorted(competitors[0]["details"]):
            if criteria == "unsound" and cat in NON_ANNOTATED_TESTS:
                continue
            fd.write(mk_bench_name(cat) + " & ")
            if criteria == "solved":
                row = [float(r["details"][cat][criteria] * 100)/
                       float(sum(r["details"][cat].itervalues()))
                       for r in competitors]
                s_row = ["%.1f\\%%" % x if x > 0 else "" for x in row]
                s_row = ["\\t%s{%s}" % (mk_best_color(max(row), row[i]),
                                        s_row[i])
                         for i in xrange(len(row))]
            else:
                row = [r["details"][cat][criteria] for r in competitors]
                s_row = ["%u" % x for x in row]
                s_row = ["\\t%s{%s}" % (mk_err_color(0, row[i]),
                                        s_row[i])
                         for i in xrange(len(row))]
            fd.write(" & ".join(s_row) + r"\\" + "\n")
        row = [r["avav"][criteria] for r in competitors]
        s_row = ["%.1f\\%%" % x for x in row]
        if criteria == "solved":
            s_row = ["\\t%s{%s}" % (mk_best_color(max(row), row[i]),
                                    s_row[i])
                     for i in xrange(len(row))]
        else:
            s_row = ["\\t%s{%s}" % (mk_err_color(0, row[i]),
                                    s_row[i])
                     for i in xrange(len(row))]
        fd.write("\\rowcolor{Altran2}\n")
        fd.write("AVAV & " + " & ".join(s_row) + r"\\" + "\n")
        fd.write("\\end{tabular}\n")

    # Table comparing all solvers
    for cat in ("solved", "timeout", "unsound", "error"):
        fd.write("\\begin{frame}{The competition}{%s}\n" % cat.capitalize())
        fd.write("\\begin{center}\n")
        mk_table(cat)
        fd.write("\\end{center}\n")
        fd.write("\\end{frame}\n\n")

def main():
    ap = argparse.ArgumentParser()
    options = ap.parse_args()

    with open("fp_progress.tex", "w") as fd:
        fd.write("\\documentclass{beamer}\n")
        fd.write("\\input{altran-beamer}\n")
        fd.write("\\usepackage{colortbl}\n")
        fd.write("\\usepackage{tikz}\n")
        fd.write("\\usetikzlibrary{datavisualization}\n")
        fd.write(r"\newcommand{\tg}[1]{{\color{AnSecondaryGreen}#1}}" + "\n")
        fd.write(r"\newcommand{\tn}[1]{#1}" + "\n")
        fd.write(r"\newcommand{\tb}[1]{{\color{AnSecondaryRed}#1}}" + "\n")
        fd.write("\\begin{document}\n\n")

        mk_progress_slides(fd)
        mk_competition_slides(fd)

        fd.write("\\end{document}\n")

if __name__ == "__main__":
    main()
