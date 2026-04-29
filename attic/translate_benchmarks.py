#!/usr/bin/env python3

import argparse
import os

def process(filename):
    cmd = ["./cvc4_2019_05_14",
           "--lang=smtlib2.0",
           "--output-lang=smtlib2.6.1",
           "--dump=raw-benchmark",
           "--preprocess-only",
           "--no-simplification",
           "--no-ite-simp",
           "--no-ext-rew-prep",
           "--dump-to=processed.smt2"]
    cmd.append(filename)
    print("Translating %s" % filename)
    os.system(" ".join(cmd))
    print("Post-processing %s" % filename)
    with open("processed.smt2", "r") as fd:
        tmp = fd.readlines()
    os.unlink("processed.smt2")
    with open(filename, "w") as fd:
        fd.write(";; This file has been translated by CVC4 from an earlier\n")
        fd.write(";; version of SMTLIB to 2.6 using the script\n")
        fd.write(";; translate_benchmarks.py in repo smtlib_schanda.\n")
        fd.write("\n")
        for line in tmp:
            if "set-option :incremental" in line:
                pass
            elif "meta-info :smt-lib-version 2.500000" in line:
                fd.write("(set-info :smt-lib-version 2.6)\n")
            elif "meta-info :" in line:
                fd.write(line.replace("meta-info", "set-info"))
            else:
                fd.write(line)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("benchmark_dir")

    options = ap.parse_args()

    if os.path.isfile(options.benchmark_dir):
        process(options.benchmark_dir)
        return

    if not os.path.isdir(options.benchmark_dir):
        ap.error("%s is not a directory" % options.benchmark_dir)

    for path, dirs, files in os.walk(options.benchmark_dir):
        for f in files:
            if f.endswith(".smt2"):
                process(os.path.join(path, f))

if __name__ == "__main__":
    main()
