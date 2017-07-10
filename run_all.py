#!/usr/bin/env python

from glob import glob
import os

PATH = os.environ["PATH"].split(os.pathsep)
CVC4_VERSIONS = sorted(glob("cvc4_*"))

for binary in CVC4_VERSIONS:
    os.system("./run.py --suite=fp cvc4 ./%s" % binary)

for prover in ("mathsat", "z3", "colibri"):
    exists = False
    for p in PATH:
        if os.path.exists(os.path.join(p, prover)):
            exists = True
            break
    if exists:
        os.system("./run.py --suite=fp %s %s" % (prover, prover))
        if prover == "mathsat":
            os.system("./run.py --suite=fp %s_acdl %s" % (prover, prover))
