#!/usr/bin/env python

# Helpful script to attempt to categorize the griggio benchmark suite

import os
import sys
import argparse
from cPickle import load
from pprint import pprint

from common import load_benchmark_status, load_results, list_results, mk_virtual_best_solver

CONFIGURATIONS = list_results()
BENCHMARKS = load_benchmark_status()

data = [load_results(solver_kind, solver_bin, BENCHMARKS)
        for solver_kind, solver_bin in CONFIGURATIONS]

griggio = {}

for solver_data in data:
    results = solver_data["group_results"]["griggio"]
    for bench_id, bench_results in results.iteritems():
        bench_name = BENCHMARKS[bench_id]["name"]
        bench_ground_truth = BENCHMARKS[bench_id]["status"]
        if bench_ground_truth != "?":
            continue
        if bench_name not in griggio:
            griggio[bench_name] = {}
        if bench_results["status"] in ("s", "u"):
            griggio[bench_name][solver_data["prover_kind"]] = bench_results["status"]

presumed_sat = []
presumed_unsat = []

for bench in sorted(griggio):
    status = griggio[bench]
    if len(status) >= 2:
        verdicts = set(status.itervalues())
        if len(verdicts) > 1:
            print "fishy: %s %s" % (bench, status)
            continue
        else:
            verdict = list(verdicts)[0]

    if len(status) < 3:
        continue

    solvers = ", ".join(sorted(list(status)))

    if verdict == "s":
        presumed_sat.append((bench, solvers))
    else:
        presumed_unsat.append((bench, solvers))

for bench, solvers in presumed_sat:
    print "presumed   SAT: %s (%s)" % (bench, solvers)

for bench, solvers in presumed_unsat:
    print "presumed UNSAT: %s (%s)" % (bench, solvers)
