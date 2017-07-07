#!/usr/bin/env python

import argparse

from common import *

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("dir")
    options = ap.parse_args()

    bench = []
    for path, dirs, files in os.walk(options.dir):
        for f in sorted(files):
            if f.endswith(".smt2"):
                b = Benchmark(os.path.join(path, f))
                b.load(keep_logic=True)
                b.unload()
                if b.expected == "unknown":
                    print b.benchmark

if __name__ == "__main__":
    main()
