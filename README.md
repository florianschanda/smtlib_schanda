# SMTLIB benchmarks
This repository contains a bag of SMTLIB benchmarks assembled by
Florian Schanda. They come from three main areas.

## SPARK 2014 VCs
VCs from the public SPARK 2014 testsuite (compiling SPARK and
executing the testsuite are non-trivial, so these benchmarks are filed
here as a service to the community).

All of these are using the CVC4 AUFBVDTNIRA logic, and we really mean
it. There is no SMTLIB fragment that covers all logics used:
* Quantifiers
* Nonlinear real and integer arithmetic
* Floating point
* Datatypes
* Arrays
* Uninterpreted functions
* Bitvectors

Most of these will be unknown (although a large fraction of them
should be UNSAT). I have only included the ones where CVC4 does not
immediately issue unsat (when run with --rlimit=2 --preprocess-step=0
--rewrite-step=0 --parse-step=0), otherwise there would be more than a
GiB of benchmarks in here.

## Hand-crafted
Hand-crafted problems produced by Florian during reviewing of papers,
axioms, SPARK 2005 user rules, FP implementations, etc. This also
contains various benchmarks I produced before the official theory was
issued to explore some of the more obscure areas.

These are sorted into the various SMTLIB logics, but generally I use
real literals for defining floating point (there is an open question
if QF_FP includes these, I think so, but there is a valid argument to
be made for not).

Allmost all of these are carefully annotated with SAT or UNSAT.

## Randomly generated
Randomly generated tests from
[PyMPF](https://github.com/florianschanda/PyMPF). These tests are
similar to Wintersteiger's SMTLIB benchmarks, but they seem to cover
more areas (i.e. we found bugs in Z3, MathSAT, CVC4 with them).

All of these are automatically annotated with SAT or UNSAT.
