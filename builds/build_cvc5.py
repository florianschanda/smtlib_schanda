#!/usr/bin/env python3

import os
import subprocess
import sys
import argparse

from copy import copy


def clean_checkout(cvc5_version, symfpu_version):
    os.makedirs("deps", exist_ok = True)

    if not os.path.isdir("cvc5"):
        subprocess.run(["git",
                        "clone",
                        "git@github.com:cvc5/cvc5.git"],
                       encoding = "UTF-8",
                       check    = True)

    if not os.path.isdir(os.path.join("deps", "symfpu")):
        subprocess.run(["git",
                        "clone",
                        "git@github.com:martin-cs/symfpu.git"],
                       cwd      = os.path.abspath("deps"),
                       encoding = "UTF-8",
                       check    = True)

    subprocess.run(["git",
                    "reset",
                    "--hard",
                    "HEAD"],
                   cwd      = os.path.abspath("cvc5"),
                   encoding = "UTF-8",
                   check    = True)
    subprocess.run(["git",
                    "clean",
                    "-xdff"],
                   cwd      = os.path.abspath("cvc5"),
                   encoding = "UTF-8",
                   check    = True)
    subprocess.run(["git",
                    "checkout",
                    cvc5_version],
                   cwd      = os.path.abspath("cvc5"),
                   encoding = "UTF-8",
                   check    = True)

    subprocess.run(["git",
                    "reset",
                    "--hard",
                    "HEAD"],
                   cwd      = os.path.abspath(os.path.join("deps", "symfpu")),
                   encoding = "UTF-8",
                   check    = True)
    subprocess.run(["git",
                    "clean",
                    "-xdff"],
                   cwd      = os.path.abspath(os.path.join("deps", "symfpu")),
                   encoding = "UTF-8",
                   check    = True)
    subprocess.run(["git",
                    "checkout",
                    symfpu_version],
                   cwd      = os.path.abspath(os.path.join("deps", "symfpu")),
                   encoding = "UTF-8",
                   check    = True)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--cvc5", default="main")
    ap.add_argument("--symfpu", default="experimental")
    ap.add_argument("--build", default="production")
    ap.add_argument("--mpfr", action="store_true", default=False)

    options = ap.parse_args()

    clean_checkout(cvc5_version   = options.cvc5,
                   symfpu_version = options.symfpu)

    cmd = ["./configure.sh",
           options.build,
           "--static",
           "--auto-download",
           "--no-unit-testing",
           "--dep-path=%s" % os.path.abspath("deps")]
    if not options.mpfr:
        cmd.append("--no-mpfr")
    subprocess.run(cmd,
                   cwd      = os.path.abspath("cvc5"),
                   encoding = "UTF-8",
                   check    = True)

    subprocess.run(["make", "-j16"],
                   cwd      = os.path.abspath(os.path.join("cvc5", "build")),
                   encoding = "UTF-8",
                   check    = True)

    subprocess.run(["strip",
                    "-s",
                    os.path.join("cvc5", "build", "bin", "cvc5")],
                   encoding = "UTF-8",
                   check    = True)

    os.rename(src = os.path.join("cvc5", "build", "bin", "cvc5"),
              dst = "cvc5_%s_%s_%s_%s" % (options.cvc5,
                                          options.symfpu,
                                          ("mpfr"
                                           if options.mpfr
                                           else "no-mpfr"),
                                          options.build))

    return 0


if __name__ == "__main__":
    sys.exit(main())
