#!/usr/bin/env python

import os

def process(fn):
    data = ""
    with open(fn, "rU") as fd:
        for raw_line in fd:
            data += raw_line
            if "(exit)" in raw_line:
                break
    with open(fn, "w") as fd:
        fd.write(data)

for path, dirs, files in os.walk("."):
    for f in files:
        if f.endswith(".smt2"):
            process(os.path.join(path, f))
