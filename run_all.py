#!/usr/bin/env python

import argparse

from glob import glob
import os

PATH = os.environ["PATH"].split(os.pathsep)
CVC4_VERSIONS = sorted(glob("cvc4_*"))

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("suite",
                    choices=["all", "fastcomp"])
    ap.add_argument("--force",
                    action="store_true",
                    default=False)
    options = ap.parse_args()

    for binary in CVC4_VERSIONS:
        if options.suite == "fastcomp":
            if binary not in (CVC4_VERSIONS[0], CVC4_VERSIONS[-1]):
                continue

        os.system("./run.py %s --suite=fp cvc4 ./%s" %
                  ("--force" if options.force else "",
                   binary))

    OTHER_PROVERS = ["mathsat", "z3"]
    if options.suite != "fastcomp":
        OTHER_PROVERS.append("colibri")

    for prover in OTHER_PROVERS:
        exists = False
        for p in PATH:
            if os.path.exists(os.path.join(p, prover)):
                exists = True
                break
        if exists:
            os.system("./run.py %s --suite=fp %s %s" %
                      ("--force" if options.force else "",
                       prover,
                       prover))
            if prover == "mathsat":
                os.system("./run.py %s --suite=fp %s_acdl %s" %
                          ("--force" if options.force else "",
                           prover,
                           prover))

if __name__ == "__main__":
    main()
