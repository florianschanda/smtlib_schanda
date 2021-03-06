(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_sqrt_householder_interval.x86_64/query.4.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_double_ackermann!0 () (_ BitVec 64))
(assert
 (let ((?x8 ((_ to_fp 11 53) symbolic_0_double_ackermann!0)))
 (fp.geq ?x8 ((_ to_fp 11 53) (_ bv4591870180066957722 64)))))
(assert
 (let ((?x8 ((_ to_fp 11 53) symbolic_0_double_ackermann!0)))
 (fp.leq ?x8 ((_ to_fp 11 53) (_ bv4626322717216342016 64)))))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) symbolic_0_double_ackermann!0))))
(assert
 (not (fp.gt ((_ to_fp 11 53) symbolic_0_double_ackermann!0) ((_ to_fp 11 53) (_ bv4607182418800017408 64)))))
(assert
 (not false))
(check-sat)
(exit)
