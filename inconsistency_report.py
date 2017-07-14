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

cat_nobody        = []
cat_sat_and_unsat = []
cat_disagree_many = []
cat_disagree_one  = []

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
            cat_sat_and_unsat.append(
                "%s: different opinions: %s SAT; %s UNSAT" % \
                (fn,
                 ", ".join(v[0] for v in sat),
                 ", ".join(v[0] for v in unsat)))
    elif benchmarks[fn] in ("sat", "unsat"):
        # Check if all disagree
        counter = "sat" if benchmarks[fn] == "unsat" else "unsat"
        conform = [v for v in other_verdicts if v[1] == benchmarks[fn]]
        rebel   = [v for v in other_verdicts if v[1] == counter]
        if len(conform) == 0 and len(rebel) == 0:
            cat_nobody.append("%s: unsolved" % fn)
        elif len(conform) == 0 and len(rebel) == 1:
            cat_disagree_one.append(
                "%s: minority report from %s" %
                (fn,
                 rebel[0][0]))
        elif len(conform) == 0 and len(rebel) >= 1:
            cat_disagree_many.append(
                "%s: many (%s) disagree on %s expectation" %
                (fn,
                 ", ".join(v[0] for v in rebel),
                 benchmarks[fn]))
    else:
        assert False

print "# Unsolved"
for msg in cat_nobody:
    print msg

print
print "# Unknown with different opinions"
for msg in cat_sat_and_unsat:
    print msg

print
print "# Minority report"
for msg in cat_disagree_one:
    print msg

print
print "# Everyone who solves disagrees with status"
for msg in cat_disagree_many:
    print msg
