#!/usr/bin/env python
##############################################################################
##                                                                          ##
##                            smtlib_schanda                                ##
##                                                                          ##
##              Copyright (C) 2017, Altran UK Limited                       ##
##                                                                          ##
##  This file is part of smtlib_schanda.                                    ##
##                                                                          ##
##  smtlib_schanda is free software: you can redistribute it and/or modify  ##
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

# Helper script to produce the relevant numbers for the monthly sectair
# report. This script will be of no use to anyone else really.

from glob import glob

import common

CVC4_VERSIONS = sorted(glob("cvc4_*"))

bench = common.load_benchmark_status()
res = common.load_results("cvc4", CVC4_VERSIONS[-1], bench)

total  = 0
solved = 0
for sha, bm in res["group_results"]["spark_2014"].iteritems():
    name = bench[sha]["name"]
    if "proofinuse__floating_point" not in name:
        continue
    total += 1
    if bm["score"] == "s":
        solved += 1

print "proof-in-use: %u.0 / %u.0" % (solved, total)

total  = 0
solved = 0
for sha, bm in res["group_results"]["crafted"].iteritems():
    total += 1
    if bm["score"] == "s":
        solved += 1

print "smtlib benchmarks: %u.0 / %u.0" % (solved, total)
