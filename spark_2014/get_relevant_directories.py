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

# This tiny script produces a list of directories in the spark
# testsuite that contain floating point.

import os

fp_dirs = set()

for path, dirs, files in os.walk("../spark_2014_all"):
    irrelevant = []
    for d in dirs:
        if "FP" not in d:
            irrelevant.append(d)
    for d in irrelevant:
        dirs.remove(d)
    for f in files:
        if f.endswith(".smt2"):
            td, vc = f.split("___", 1)
            fp_dirs.add(td)

print "FLOAT_ONLY_BENCHMARKS = set(["
for d in sorted(fp_dirs):
    print "    '%s'," % d
print "])"
