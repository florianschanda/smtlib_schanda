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
from pprint import pprint

from mk_status_slides import data, other_data, GROUPS, BENCHMARKS

solutions = [data[-1]] + other_data

cat_nobody        = []
cat_sat_and_unsat = []
cat_disagree_many = []
cat_disagree_one  = []

for group in GROUPS:
    for data in solutions:
        for bm in data["group_results"][group]:
            bm_name = BENCHMARKS[bm]["name"]
            verdicts = [(s["prover_kind"],
                         s["group_results"][group][bm]["status"])
                        for s in solutions]

            if BENCHMARKS[bm]["status"] == "?":
                # Check if we have different solutions
                sat   = [v[0] for v in verdicts if v[1] == "s"]
                unsat = [v[0] for v in verdicts if v[1] == "u"]
                if len(sat) >= 1 and len(unsat) >= 1:
                    cat_sat_and_unsat.append(
                        "%s: different opinions: %s SAT; %s UNSAT" % \
                        (bm_name,
                         ", ".join(sat),
                         ", ".join(unsat)))
            elif BENCHMARKS[bm]["status"] in ("s", "u"):
                # Check if all disagree
                counter = {"s" : "u",
                           "u" : "s"}[BENCHMARKS[bm]["status"]]
                conform = [v[0]
                           for v in verdicts
                           if v[1] == BENCHMARKS[bm]["status"]]
                rebel   = [v[0] for v in verdicts if v[1] == counter]
                if len(conform) == 0 and len(rebel) == 0:
                    cat_nobody.append("%s: unsolved" % fn)
                elif len(conform) == 0 and len(rebel) == 1:
                    cat_disagree_one.append(
                        "%s: minority report from %s" %
                        (bm_name,
                         rebel[0]))
                elif len(conform) == 0 and len(rebel) >= 1:
                    cat_disagree_many.append(
                        "%s: many (%s) disagree on %s expectation" %
                        (bm_name,
                         ", ".join(rebel),
                         BENCHMARKS[bm]["status"]))
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
