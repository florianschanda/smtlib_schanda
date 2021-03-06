(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_real_numerical_recipes_qrdcmp.x86_64/query.4.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun sym_f_ackermann!0 () (_ BitVec 32))
(assert
 (let ((?x8 ((_ to_fp 8 24) sym_f_ackermann!0)))
 (fp.geq ?x8 ((_ to_fp 8 24) (_ bv1065353216 32)))))
(assert
 (let ((?x8 ((_ to_fp 8 24) sym_f_ackermann!0)))
 (fp.leq ?x8 ((_ to_fp 8 24) (_ bv1101004800 32)))))
(assert
 (let ((?x21 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (_ bv3236780938 32)) (fp.mul roundNearestTiesToEven ((_ to_fp 8 24) (_ bv3196059648 32)) ((_ to_fp 8 24) sym_f_ackermann!0)))))
 (let ((?x24 (fp.div roundNearestTiesToEven ?x21 ((_ to_fp 8 24) (_ bv1075663419 32)))))
 (let ((?x8 ((_ to_fp 8 24) sym_f_ackermann!0)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x8 (fp.mul roundNearestTiesToEven ?x24 ((_ to_fp 8 24) (_ bv3196059648 32))))))
 (let ((?x36 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv3254779904 32)) (fp.mul roundNearestTiesToEven ?x24 ((_ to_fp 8 24) (_ bv1056964608 32))))))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (_ bv0 32)) (fp.mul roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1074236894 32)) ?x36))))
 (let ((?x42 (fp.add roundNearestTiesToEven ?x38 (fp.mul roundNearestTiesToEven ((_ to_fp 8 24) (_ bv3204448256 32)) ?x26))))
 (let ((?x46 (fp.mul roundNearestTiesToEven (fp.div roundNearestTiesToEven ?x42 ((_ to_fp 8 24) (_ bv1075285470 32))) ((_ to_fp 8 24) (_ bv3204448256 32)))))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x26 ?x46)))
 (not (fp.eq ?x47 ((_ to_fp 8 24) (_ bv0 32))))))))))))))
(assert
 (let ((?x21 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (_ bv3236780938 32)) (fp.mul roundNearestTiesToEven ((_ to_fp 8 24) (_ bv3196059648 32)) ((_ to_fp 8 24) sym_f_ackermann!0)))))
(let ((?x24 (fp.div roundNearestTiesToEven ?x21 ((_ to_fp 8 24) (_ bv1075663419 32)))))
(let ((?x8 ((_ to_fp 8 24) sym_f_ackermann!0)))
(let ((?x26 (fp.sub roundNearestTiesToEven ?x8 (fp.mul roundNearestTiesToEven ?x24 ((_ to_fp 8 24) (_ bv3196059648 32))))))
(let ((?x36 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv3254779904 32)) (fp.mul roundNearestTiesToEven ?x24 ((_ to_fp 8 24) (_ bv1056964608 32))))))
(let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (_ bv0 32)) (fp.mul roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1074236894 32)) ?x36))))
(let ((?x42 (fp.add roundNearestTiesToEven ?x38 (fp.mul roundNearestTiesToEven ((_ to_fp 8 24) (_ bv3204448256 32)) ?x26))))
(let ((?x46 (fp.mul roundNearestTiesToEven (fp.div roundNearestTiesToEven ?x42 ((_ to_fp 8 24) (_ bv1075285470 32))) ((_ to_fp 8 24) (_ bv3204448256 32)))))
(let ((?x47 (fp.sub roundNearestTiesToEven ?x26 ?x46)))
(not (not (fp.isNaN ?x47)))))))))))))
(check-sat)
(exit)
