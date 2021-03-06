(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_real_wxpro_tostr.x86_64/query.33.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun meters_ackermann!0 () (_ BitVec 64))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (fp.geq ?x8 ((_ to_fp 11 53) (_ bv0 64)))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (fp.leq ?x8 ((_ to_fp 11 53) (_ bv4652007308841189376 64)))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (let ((?x16 (fp.abs ?x8)))
 (let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
 (let ((?x19 ((_ sign_extend 32) ?x18)))
 (let ((?x26 (bvor (bvudiv ((_ extract 31 0) ?x19) (_ bv10 32)) ((_ extract 31 0) (concat (_ bv0 32) ((_ extract 63 32) ?x19))))))
 (= (_ bv0 32) ?x26)))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (let ((?x16 (fp.abs ?x8)))
 (let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
 (let ((?x19 ((_ sign_extend 32) ?x18)))
 (let ((?x20 ((_ extract 31 0) ?x19)))
 (= (_ bv48 8) ((_ extract 7 0) (bvadd (_ bv48 32) (bvurem ?x20 (_ bv10 32)))))))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (let ((?x16 (fp.abs ?x8)))
 (let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x16 ((_ to_fp 11 53) roundNearestTiesToEven ?x18))))
 (let ((?x42 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x36 ((_ to_fp 11 53) (_ bv4636737291354636288 64))) ((_ to_fp 11 53) (_ bv4633641066610819072 64)))))
 (let ((?x44 ((_ fp.to_sbv 32) roundTowardZero (fp.div roundNearestTiesToEven ?x42 ((_ to_fp 11 53) (_ bv4636737291354636288 64))))))
 (let ((?x45 ((_ sign_extend 32) ?x44)))
 (let ((?x47 (bvudiv ((_ extract 31 0) ?x45) (_ bv10 32))))
 (not (= (_ bv0 32) (bvor ?x47 ((_ extract 31 0) (concat (_ bv0 32) ((_ extract 63 32) ?x45)))))))))))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
(let ((?x16 (fp.abs ?x8)))
(let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
(let ((?x36 (fp.sub roundNearestTiesToEven ?x16 ((_ to_fp 11 53) roundNearestTiesToEven ?x18))))
(let ((?x42 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x36 ((_ to_fp 11 53) (_ bv4636737291354636288 64))) ((_ to_fp 11 53) (_ bv4633641066610819072 64)))))
(let ((?x44 ((_ fp.to_sbv 32) roundTowardZero (fp.div roundNearestTiesToEven ?x42 ((_ to_fp 11 53) (_ bv4636737291354636288 64))))))
(let ((?x45 ((_ sign_extend 32) ?x44)))
(let ((?x47 (bvudiv ((_ extract 31 0) ?x45) (_ bv10 32))))
(not (bvult (bvurem ?x47 (_ bv10 32)) (_ bv10 32))))))))))))
(check-sat)
(exit)
