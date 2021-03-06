(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_syn_inf_float.x86_64/query.25.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun f_1_ackermann!0 () (_ BitVec 32))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) f_1_ackermann!0))))
(assert
 (let ((?x16 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) roundNearestTiesToEven (fp.abs ((_ to_fp 8 24) f_1_ackermann!0))) ((_ to_fp 11 53) (_ bv4764036703148834816 64)))))
(let ((?x17 ((_ to_fp 8 24) roundNearestTiesToEven ?x16)))
(let ((?x18 (fp.mul roundNearestTiesToEven ?x17 ?x17)))
(let ((?x22 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x18 ?x18) ((_ to_fp 8 24) (_ bv1065353216 32)))))
(not (fp.gt ?x22 ((_ to_fp 8 24) (_ bv0 32)))))))))
(check-sat)
(exit)
