#!/usr/bin/env python

import os

def process(fn):
    data = ""
    with open(fn, "rU") as fd:
        for raw_line in fd:
            line = raw_line.rstrip()
            if line.lower() == "; should be sat":
                line = "(set-info :status sat)"
            elif line.lower() == "; should be unsat":
                line = "(set-info :status unsat)"

            data += line + "\n"
    with open(fn, "w") as fd:
        fd.write(data)

for path, dirs, files in os.walk("."):
    for f in files:
        if f.endswith(".smt2"):
            process(os.path.join(path, f))
