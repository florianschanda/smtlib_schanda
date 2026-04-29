#!/usr/bin/env python

import os

def process(fn):
    if fn.endswith("_sat.smt2"):
        expected = "sat"
    elif fn.endswith("_unsat.smt2"):
        expected = "unsat"
    else:
        return

    data = ""
    with open(fn, "rU") as fd:
        for raw_line in fd:
            data += raw_line
            if "set-logic" in raw_line:
                data += "(set-info :status %s)\n" % expected
    with open(fn, "w") as fd:
        fd.write(data)

for path, dirs, files in os.walk("."):
    for f in files:
        if f.endswith(".smt2"):
            process(os.path.join(path, f))
