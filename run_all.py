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

import argparse

from glob import glob
import os

PATH = os.environ["PATH"].split(os.pathsep)
CVC4_VERSIONS = sorted(glob("cvc4_*"))

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("suite",
                    choices=["all", "medium", "fast"])
    ap.add_argument("--force",
                    action="store_true",
                    default=False)
    ap.add_argument("--debug",
                    action="store_true",
                    default=False)
    options = ap.parse_args()

    bm_suite = "debug" if options.debug else "fp"

    for binary in CVC4_VERSIONS:
        # Fast suite skips most versions
        if options.suite == "fast":
            if binary not in (CVC4_VERSIONS[0], CVC4_VERSIONS[-1]):
                continue

        os.system("./run.py %s --suite=%s cvc4 ./%s" %
                  ("--force" if options.force else "",
                   bm_suite,
                   binary))

    for binary in CVC4_VERSIONS[-2:]:
        os.system("./mk_text_report.py cvc4 %s" % binary)

    OTHER_PROVERS = ["mathsat", "mathsat_acdl", "z3"]
    # Only all includes colibri and alt-ergo
    if options.suite == "all":
        OTHER_PROVERS.append("altergo")
        OTHER_PROVERS.append("colibri")

    for prover in OTHER_PROVERS:
        exists = False
        prover_bin = {
            "z3"           : "z3_2017_07_13",
            "mathsat_acdl" : "mathsat",
            "altergo"      : "altergo_spark_2017_07_20",
        }.get(prover, prover)

        # Search current directory, then PATH for prover binary
        if os.path.exists(prover_bin):
            prover_bin = "./%s" % prover_bin
            exists     = True
        if not exists:
            for p in PATH:
                if os.path.exists(os.path.join(p, prover_bin)):
                    exists = True
                    break

        if exists:
            os.system("./run.py %s --suite=%s %s %s" %
                      ("--force" if options.force else "",
                       bm_suite,
                       prover,
                       prover_bin))
        else:
            print "Could not find %s on path." % prover_bin

if __name__ == "__main__":
    main()
