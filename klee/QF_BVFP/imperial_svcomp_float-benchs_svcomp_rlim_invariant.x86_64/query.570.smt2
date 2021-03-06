(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.570.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x17 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x17 ?x22))))
(assert
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x31)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x17 ?x25)))
 (or (or (fp.isNaN ?x27) (fp.isNaN ?x32)) (fp.gt ?x27 ?x32)))))))))
(assert
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x17 ?x25)))
 (or (or (fp.isNaN ?x27) (fp.isNaN ?x31)) (fp.lt ?x27 ?x31)))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x41 ?x25))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x41 ?x44))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x46 ?x17)))
 (not (fp.isNaN ?x47))))))
(assert
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x30 ?x41)))
 (not (fp.isNaN ?x50))))))
(assert
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x30 ?x41)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x46 ?x17)))
 (not (fp.gt ?x47 ?x50)))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x55 ?x25))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x55 ?x44))))
(assert
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x58 (fp.sub roundNearestTiesToEven ?x30 ?x55)))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x17 ?x41)))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x60 ?x61)))
 (or (fp.isNaN ?x58) (fp.gt ?x62 ?x58)))))))))))
(assert
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x17 ?x41)))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x60 ?x61)))
 (not (fp.isNaN ?x62))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4))))
(assert
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x17 ?x41)))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x60 ?x61)))
 (not (fp.lt ?x62 ?x55)))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x71 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x71 ?x25))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x71 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x71 ?x44))))
(assert
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x17 ?x41)))
 (let ((?x75 (fp.add roundNearestTiesToEven ?x61 ?x55)))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x76 (fp.sub roundNearestTiesToEven ?x74 ?x75)))
 (not (fp.isNaN ?x76))))))))))
(assert
 (let ((?x71 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x79 (fp.sub roundNearestTiesToEven ?x30 ?x71)))
 (not (fp.isNaN ?x79))))))
(assert
 (let ((?x71 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x79 (fp.sub roundNearestTiesToEven ?x30 ?x71)))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x17 ?x41)))
 (let ((?x75 (fp.add roundNearestTiesToEven ?x61 ?x55)))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x76 (fp.sub roundNearestTiesToEven ?x74 ?x75)))
 (not (fp.gt ?x76 ?x79)))))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x84 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x84 ?x22))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x87 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x87 ?x25))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x87 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x87 ?x44))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x31 ?x25))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x31 ?x44))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x46 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x46 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x60 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x60 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x74 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x74 ?x22))))
(assert
 (let ((?x87 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
(let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
(let ((?x102 (fp.sub roundNearestTiesToEven ?x30 ?x87)))
(let ((?x71 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
(let ((?x55 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
(let ((?x41 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
(let ((?x17 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
(let ((?x61 (fp.sub roundNearestTiesToEven ?x17 ?x41)))
(let ((?x75 (fp.add roundNearestTiesToEven ?x61 ?x55)))
(let ((?x84 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
(let ((?x99 (fp.sub roundNearestTiesToEven ?x84 (fp.sub roundNearestTiesToEven ?x75 ?x71))))
(let (($x108 (and (and (not (fp.isNaN ?x99)) (not (fp.isNaN ?x102))) (not (fp.gt ?x99 ?x102)))))
(not $x108))))))))))))))
(check-sat)
(exit)
