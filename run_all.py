#!/usr/bin/env python

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
    options = ap.parse_args()

    for binary in CVC4_VERSIONS:
        # Fast suite skips most versions
        if options.suite == "fast":
            if binary not in (CVC4_VERSIONS[0], CVC4_VERSIONS[-1]):
                continue

        os.system("./run.py %s --suite=fp cvc4 ./%s" %
                  ("--force" if options.force else "",
                   binary))

    OTHER_PROVERS = ["mathsat", "z3"]
    # Only all includes colibri and alt-ergo
    if options.suite == "all":
        OTHER_PROVERS.append("colibri")
        OTHER_PROVERS.append("altergo")

    for prover in OTHER_PROVERS:
        prover_bin = prover if prover != "altergo" else "alt-ergo"
        exists = False
        for prover_bin in PATH:
            if os.path.exists(os.path.join(p, prover_bin)):
                exists = True
                break
        if exists:
            os.system("./run.py %s --suite=fp %s %s" %
                      ("--force" if options.force else "",
                       prover,
                       prover_bin))
            if prover == "mathsat":
                os.system("./run.py %s --suite=fp %s_acdl %s" %
                          ("--force" if options.force else "",
                           prover,
                           prover_bin))

if __name__ == "__main__":
    main()
