#!/usr/bin/env python

import os
import argparse
from cPickle import load, dump
from pprint import pprint

from mk_status_slides import data, other_data
from common import Benchmark

# Cache/load expected status of all benchmarks
if os.path.exists("benchmarks.p"):
    with open("benchmarks.p", "rb") as fd:
        benchmarks = load(fd)
else:
    benchmarks = {}
    for fn in data[0]["verdicts"]:
        b = Benchmark(fn)
        b.load(keep_logic = True)
        benchmarks[fn] = b.expected
    with open("benchmarks.p", "wb") as fd:
        dump(benchmarks, fd, -1)

for fn in sorted(benchmarks):
    cvc4_verdicts = map(lambda i: (i["prover"]["bin"],
                                   i["verdicts"][fn]),
                        data)
    other_verdicts = map(lambda i: (i["prover"]["kind"],
                                    i["verdicts"][fn]),
                         other_data)
    other_verdicts.append(("cvc4", cvc4_verdicts[-1][1]))

    if benchmarks[fn] == "unknown":
        # Check if we have different solutions
        sat   = [v for v in other_verdicts if v[1] == "sat"]
        unsat = [v for v in other_verdicts if v[1] == "unsat"]
        if len(sat) >= 1 and len(unsat) >= 1:
            print "%s: different opinions: %s SAT; %s UNSAT" % \
                (fn,
                 ", ".join(v[0] for v in sat),
                 ", ".join(v[0] for v in unsat))
    elif benchmarks[fn] in ("sat", "unsat"):
        # Check if all disagree
        counter = "sat" if benchmarks[fn] == "unsat" else "unsat"
        conform = [v for v in other_verdicts if v[1] == benchmarks[fn]]
        rebel   = [v for v in other_verdicts if v[1] == counter]
        if len(conform) == 0 and len(rebel) >= 1:
            print "%s: nobody (%s) agrees on %s expectation" % \
                (fn,
                 ", ".join(v[0] for v in rebel),
                 benchmarks[fn])
        elif len(conform) == 0 and len(rebel) == 0:
            print "%s: nobody can solve it" % fn
    else:
        assert False
