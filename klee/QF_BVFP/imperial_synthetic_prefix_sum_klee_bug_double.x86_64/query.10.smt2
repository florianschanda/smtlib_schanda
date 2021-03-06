(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_synthetic_prefix_sum_klee_bug_double.x86_64/query.10.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun data_in_ackermann!0 () (_ BitVec 64))
(assert
 (let ((?x8 ((_ to_fp 11 53) data_in_ackermann!0)))
 (let (($x9 (fp.isNaN ?x8)))
 (or (or $x9 $x9) (fp.lt ?x8 ?x8)))))
(assert
 (not false))
(check-sat)
(exit)
