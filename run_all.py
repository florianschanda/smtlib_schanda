#!/usr/bin/env python
##############################################################################
##                                                                          ##
##                            smtlib_schanda                                ##
##                                                                          ##
##              Copyright (C) 2017, Altran UK Limited                       ##
##              Copyright (C) 2018, Florian Schanda                         ##
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

import argparse

from glob import glob
import os

PATH = os.environ["PATH"].split(os.pathsep)

def find_latest(pattern):
    candidates = sorted(glob(pattern))
    if len(candidates) > 0:
        return candidates[-1]
    else:
        return None

# We don't include debug builds.
CVC4_VERSIONS       = [x
                       for x in sorted(glob("cvc4_*"))
                       if "_debug" not in x]

MATHSAT_VERSION     = find_latest("mathsat_*")

Z3_VERSION          = find_latest("z3_[2r]*")
Z3_SF_VERSION       = find_latest("z3_smallfloats_*")

ALT_ERGO_VERSION    = find_latest("altergo_spark_*")

# TODO: Make use of the smt2 facility of alt-ergo
ALT_ERGO_FP_VERSION = find_latest("altergo_2*")
ALT_ERGO_FP_AXIOMS  = find_latest("altergo_fp_*.why")

GOSAT_VERSION       = find_latest("gosat_*")

COLIBRI_VERSION     = find_latest("colibri_*")
if COLIBRI_VERSION is not None:
    COLIBRI_VERSION += "/bin/colibri"

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("suite",
                    choices=["all", "tacas"])
    ap.add_argument("--force",
                    action="store_true",
                    default=False)
    ap.add_argument("--debug",
                    action="store_true",
                    default=False)
    options = ap.parse_args()

    if options.debug:
        bm_suites = ["debug"]
        cvc4_used_versions = CVC4_VERSIONS[-1:]
        all_provers = False
    elif options.suite == "all":
        bm_suites = ["all"]
        cvc4_used_versions = CVC4_VERSIONS
        all_provers = True
    elif options.suite == "tacas":
        bm_suites = ["tacas"]
        cvc4_used_versions = CVC4_VERSIONS
        all_provers = True
    else:
        assert False

    invocations = [("cvc4", v) for v in cvc4_used_versions]
    invocations.append(("z3", Z3_VERSION))
    if all_provers:
        # We pick a random (but consistent) version for the OldFP and
        # NoCBQI run for CVC4
        # invocations.append(("oldfp", "cvc4_2018_01_27"))
        # invocations.append(("nocbqi", "cvc4_2018_01_27"))
        # invocations.append(("approx", "cvc4_2018_01_27"))

        invocations.append(("altergo", ALT_ERGO_VERSION))
        invocations.append(("altergo-fp", ALT_ERGO_FP_VERSION))
        invocations.append(("colibri", COLIBRI_VERSION))
        invocations.append(("mathsat", MATHSAT_VERSION))
        invocations.append(("mathsat_acdl", MATHSAT_VERSION))

        invocations.append(("z3_smallfloats", Z3_SF_VERSION))
        invocations.append(("gosat", GOSAT_VERSION))
        invocations.append(("sonolar", "sonolar_2014_12_04"))
        invocations.append(("cbmc", "cbmc_wrapper.sh"))
        invocations.append(("cbmc_refine", "cbmc_wrapper.sh"))

    print "Compiling utilities..."
    os.system("make -C util")

    for kind, binary in invocations:
        if binary is None:
            continue
        for suite in bm_suites:
            if os.path.exists(binary):
                actual_bin = "./" + binary
            else:
                actual_bin = binary

            os.system("./run.py --no-utils %s %s --suite=%s %s %s" %
                      ("--force" if options.force else "",
                       "--timeout=2" if options.suite == "fast" else "",
                       suite,
                       kind,
                       actual_bin))

    print "Preparing results tarball"
    if os.path.isfile("results.tar.gz"):
        os.unlink("results.tar.gz")
    if os.path.isfile("results.tar.xz"):
        os.unlink("results.tar.xz")
    os.system("tar cfz results.tar.gz results")

if __name__ == "__main__":
    main()
