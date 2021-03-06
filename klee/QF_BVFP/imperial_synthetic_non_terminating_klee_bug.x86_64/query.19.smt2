(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_synthetic_non_terminating_klee_bug.x86_64/query.19.smt2
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
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (fp.gt ?x18 ?x20)))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (fp.gt ?x22 ?x20))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (fp.gt ?x24 ?x20)))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (fp.gt ?x26 ?x20))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (fp.gt ?x28 ?x20)))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (fp.gt ?x30 ?x20))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (fp.gt ?x32 ?x20)))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (fp.gt ?x34 ?x20))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
 (fp.gt ?x36 ?x20)))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x8)))
 (fp.gt ?x38 ?x20))))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x8)))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x38 ?x8)))
 (fp.gt ?x40 ?x20)))))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x8)))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x38 ?x8)))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x40 ?x8)))
 (fp.gt ?x42 ?x20))))))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x8)))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x38 ?x8)))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x40 ?x8)))
 (let ((?x44 (fp.sub roundNearestTiesToEven ?x42 ?x8)))
 (fp.gt ?x44 ?x20)))))))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x8)))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x38 ?x8)))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x40 ?x8)))
 (let ((?x44 (fp.sub roundNearestTiesToEven ?x42 ?x8)))
 (let ((?x46 (fp.sub roundNearestTiesToEven ?x44 ?x8)))
 (fp.gt ?x46 ?x20))))))))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x8)))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x38 ?x8)))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x40 ?x8)))
 (let ((?x44 (fp.sub roundNearestTiesToEven ?x42 ?x8)))
 (let ((?x46 (fp.sub roundNearestTiesToEven ?x44 ?x8)))
 (let ((?x48 (fp.sub roundNearestTiesToEven ?x46 ?x8)))
 (fp.gt ?x48 ?x20)))))))))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
 (let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
 (let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x8)))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x38 ?x8)))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x40 ?x8)))
 (let ((?x44 (fp.sub roundNearestTiesToEven ?x42 ?x8)))
 (let ((?x46 (fp.sub roundNearestTiesToEven ?x44 ?x8)))
 (let ((?x48 (fp.sub roundNearestTiesToEven ?x46 ?x8)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x48 ?x8)))
 (fp.gt ?x50 ?x20))))))))))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x8 ((_ to_fp 8 24) delta_ackermann!0)))
(let ((?x18 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv1120403456 32)) ?x8)))
(let ((?x22 (fp.sub roundNearestTiesToEven ?x18 ?x8)))
(let ((?x24 (fp.sub roundNearestTiesToEven ?x22 ?x8)))
(let ((?x26 (fp.sub roundNearestTiesToEven ?x24 ?x8)))
(let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x8)))
(let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x8)))
(let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x8)))
(let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x8)))
(let ((?x36 (fp.sub roundNearestTiesToEven ?x34 ?x8)))
(let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x8)))
(let ((?x40 (fp.sub roundNearestTiesToEven ?x38 ?x8)))
(let ((?x42 (fp.sub roundNearestTiesToEven ?x40 ?x8)))
(let ((?x44 (fp.sub roundNearestTiesToEven ?x42 ?x8)))
(let ((?x46 (fp.sub roundNearestTiesToEven ?x44 ?x8)))
(let ((?x48 (fp.sub roundNearestTiesToEven ?x46 ?x8)))
(let ((?x50 (fp.sub roundNearestTiesToEven ?x48 ?x8)))
(not (fp.gt (fp.sub roundNearestTiesToEven ?x50 ?x8) ?x20)))))))))))))))))))))
(check-sat)
(exit)
