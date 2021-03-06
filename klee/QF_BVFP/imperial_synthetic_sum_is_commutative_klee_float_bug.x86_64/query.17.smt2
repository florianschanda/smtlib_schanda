(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_synthetic_sum_is_commutative_klee_float_bug.x86_64/query.17.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun data_ackermann!0 () (_ BitVec 32))
(declare-fun data_ackermann!4 () (_ BitVec 32))
(declare-fun data_ackermann!1 () (_ BitVec 32))
(declare-fun data_ackermann!2 () (_ BitVec 32))
(declare-fun data_ackermann!3 () (_ BitVec 32))
(assert
 (fp.gt ((_ to_fp 8 24) data_ackermann!0) ((_ to_fp 8 24) (_ bv0 32))))
(assert
 (let ((?x16 ((_ to_fp 8 24) data_ackermann!1)))
 (let ((?x17 ((_ to_fp 8 24) data_ackermann!2)))
 (let ((?x18 ((_ to_fp 8 24) data_ackermann!3)))
 (let ((?x20 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) data_ackermann!0) ((_ to_fp 8 24) (_ bv0 32)))))
 (let ((?x28 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x20 ?x18) ?x17)))
 (let ((?x31 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x28 ?x16) ((_ to_fp 8 24) data_ackermann!4))))
 (let ((?x22 (fp.add roundNearestTiesToEven ?x17 (fp.add roundNearestTiesToEven ?x18 ?x20))))
 (let ((?x23 (fp.add roundNearestTiesToEven ?x16 ?x22)))
 (= (_ bv0 32) (bvand (ite (fp.isNaN ?x23) (_ bv1 32) (_ bv0 32)) (ite (fp.isNaN ?x31) (_ bv1 32) (_ bv0 32)))))))))))))
(assert
 (let ((?x20 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) data_ackermann!0) ((_ to_fp 8 24) (_ bv0 32)))))
 (let ((?x18 ((_ to_fp 8 24) data_ackermann!3)))
 (let ((?x17 ((_ to_fp 8 24) data_ackermann!2)))
 (let ((?x22 (fp.add roundNearestTiesToEven ?x17 (fp.add roundNearestTiesToEven ?x18 ?x20))))
 (let ((?x16 ((_ to_fp 8 24) data_ackermann!1)))
 (let ((?x23 (fp.add roundNearestTiesToEven ?x16 ?x22)))
 (let ((?x28 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x20 ?x18) ?x17)))
 (let ((?x31 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x28 ?x16) ((_ to_fp 8 24) data_ackermann!4))))
 (not (fp.eq ?x31 ?x23)))))))))))
(assert
 (let ((?x18 ((_ to_fp 8 24) data_ackermann!3)))
 (fp.lt ((_ to_fp 8 24) (_ bv1065353216 32)) ?x18)))
(assert
 (let ((?x17 ((_ to_fp 8 24) data_ackermann!2)))
 (fp.lt ((_ to_fp 8 24) (_ bv1073741824 32)) ?x17)))
(assert
 (let ((?x16 ((_ to_fp 8 24) data_ackermann!1)))
 (fp.lt ((_ to_fp 8 24) (_ bv1077936128 32)) ?x16)))
(assert
 (not (fp.lt ((_ to_fp 8 24) (_ bv1082130432 32)) ((_ to_fp 8 24) data_ackermann!4))))
(assert
 (not false))
(check-sat)
(exit)
