# SMTLIB benchmarks
This repository contains a bag of SMTLIB benchmarks assembled by
Florian Schanda, and a bag of benchmarks filed here for
convenience. My benchmarks (spark_2014, crafted, random) come from
three main areas.

## SPARK 2014 VCs
VCs from the public SPARK 2014 testsuite (compiling SPARK and
executing the testsuite are non-trivial, so these benchmarks are filed
here as a service to the community).

There are three variants included here:
* AUFBVDTNIRA These are all non-trivial benchmarks (generated for CVC4)
* AUFBVFPDTNIRA These are all benchmarks that use floats, in various dialects
  for different solvers
* QF_AUFBVFPNIRA These are quantifier- and datatype-free benchmarks that use
  floats

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

## wintersteiger
These are Cristoph's FP benchmarks, downloaded on 2017-07-05 from
SMTLIB and filed here for convenience.

## griggio
These are Alberto's FP benchmarks, downloaded on 2017-07-05 from
SMTLIB and filed here for convenience.

## nyxbrain
These are Martin's work-in-progress benchmarks. They are filed here
for convenience, but they should not be re-distributed or included in
SMTLIB as they are *not yet finished or necessarily correct*. Please
contact Martin for additional detail.

# Scripts

There are also a bunch of scripts here, which Martin and I have used to
benchmark and measure progress.

* run.py (run benchmarks and collect results)
* run_all.py (run all solver versions/configurations, takes a long time)

The following scripts use the results from run.py:

* mk_status_slides.py (produce nice slides showing status)
* inconsistency_report.py (report dubious cases such as prover disagreement)
* need_status.py (show which benchmarks are not annotated with sat/unsat)
* generate_spark_2014_benchmarks.py (script used to generate the benchmarks
  filed here)
