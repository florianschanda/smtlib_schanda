(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_synthetic_non_terminating_klee_bug.x86_64/query.03.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun delta_ackermann!0 () (_ BitVec 32))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) delta_ackermann!0))))
(assert
 (not (fp.lt ((_ to_fp 8 24) delta_ackermann!0) ((_ to_fp 8 24) (_ bv914358274 32)))))
(assert
 (let (($x21 (fp.gt (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ((_ to_fp 8 24) delta_ackermann!0)) ((_ to_fp 8 24) (_ bv0 32)))))
(not (not $x21))))
(check-sat)
(exit)
