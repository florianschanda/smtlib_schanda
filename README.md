# SMTLIB benchmarks
This repository contains a bag of SMTLIB benchmarks assembled by
Florian Schanda, and a bag of benchmarks filed here for
convenience. My benchmarks (spark_2014, crafted, random) come from
three main areas.

## SPARK 2014 VCs
VCs from the public SPARK 2014 testsuite (compiling SPARK and
executing the testsuite are non-trivial, so these benchmarks are filed
here as a service to the community).

There are two top-level versions of these.

### spark_2014
These focus specifically on floats, it is a subset of all SPARK
benchmarks. Any benchmark that did not contain at least a floating
point type or some floating point operator is stripped out. Different
dialects for different solvers are included (where necessary).

* AUFBVFPDTNIRA These are all benchmarks that use floats. Some are
  annotated with UNSAT (where we believe that the original Ada code
  did not contain errors), many are unknown and there are no SAT
  annotations.

* QF_AUFBVFPNIRA These are the same benchmarks above, but quantifier-
  and datatype-free. They have been made quantifier-free by simply
  ripping out all quantifiers, so many of them will likely be SAT, but
  some remain UNSAT.

### spark_2014_all

These are *all* benchmarks from the SPARK testsuite, many are
trivial. However, there is almost no annotation as to status. We've
also included various dialects where appropriate, so that we can
produce overall cactus plots.

* The basic .smt2 files will be for CVC4, using the floating point theory

* .smt2_oldfp will be for CVC4, but using the *old* floating point
  encoding (reals + round) that was used by SPARK before we started on
  this work.

* .smt2_z3 will be for Z3 (main difference is the different bv / int
  conversions)

* .smt2_altergo are actually not SMT, but instead using alt-ergo's
  native input format.

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
more areas (i.e. we found bugs in Z3, MathSAT, CVC4, and COLIBRI with them).

All of these are automatically annotated with SAT or UNSAT.

## nyxbrain
These are Martin's work-in-progress benchmarks. They are filed here
for convenience, but they should not be re-distributed or included in
SMTLIB as they are *not yet finished or necessarily correct*. Please
contact Martin for additional detail.

## SMTLIB

### wintersteiger
These are Cristoph's FP benchmarks, downloaded on 2017-07-05 from
SMTLIB and filed here for convenience.

### griggio
These are Alberto's FP benchmarks, downloaded on 2017-07-05 from
SMTLIB and filed here for convenience.

### heizmann
These are Matthias Heizmann's Ultimate Automizer benchmarks (in a
variety of logics), downloaded on 2017-07-22 from SMTLIB and filed
here for convenience.


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
