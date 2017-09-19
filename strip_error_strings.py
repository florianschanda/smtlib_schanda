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

# This script can be used to strip all "comment" strings from the results.
# The idea is to remove potentially identifying information from
# "industrial" results.

import os
from cPickle import dump, load

def process(fn):
    print "Purging %s" % fn
    with open(fn, "rb") as fd:
        tmp = load(fd)
    for bm_name, info in tmp.iteritems():
        info["comment"] = ""
    with open(fn, "wb") as fd:
        dump(tmp, fd, -1)

def main():
    for path, dirs, files in os.walk("results"):
        for f in files:
            if f.startswith("data_") and f.endswith(".p"):
                process(os.path.join(path, f))

if __name__ == "__main__":
    main()
