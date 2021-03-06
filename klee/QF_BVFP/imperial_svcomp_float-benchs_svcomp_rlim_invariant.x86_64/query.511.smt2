(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.511.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x17 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x17 ?x22))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x33 (fp.sub roundNearestTiesToEven ?x31 ?x32)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x17 (fp.sub roundNearestTiesToEven ?x24 ?x25))))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x33)) (fp.gt ?x28 ?x33))))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x17 (fp.sub roundNearestTiesToEven ?x24 ?x25))))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x32)) (fp.lt ?x28 ?x32))))))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x42 ?x44))))
(assert
 (let ((?x47 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x42 ?x47))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x49 ?x17)))
 (not (fp.isNaN ?x50))))))
(assert
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x53 (fp.sub roundNearestTiesToEven ?x31 ?x42)))
 (not (fp.isNaN ?x53))))))
(assert
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x53 (fp.sub roundNearestTiesToEven ?x31 ?x42)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x49 ?x17)))
 (not (fp.gt ?x50 ?x53)))))))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x58 ?x44))))
(assert
 (let ((?x47 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x58 ?x47))))
(assert
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x17 ?x42)))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x61 ?x62)))
 (not (fp.isNaN ?x63))))))))
(assert
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x31 ?x58)))
 (not (fp.isNaN ?x66))))))
(assert
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x31 ?x58)))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x17 ?x42)))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x61 ?x62)))
 (not (fp.gt ?x63 ?x66)))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x24 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x24 ?x22))))
(assert
 (let ((?x75 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x76 (fp.sub roundNearestTiesToEven ?x31 ?x75)))
 (let ((?x44 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x73 (fp.sub roundNearestTiesToEven ?x24 ?x44)))
 (or (or (fp.isNaN ?x73) (fp.isNaN ?x76)) (fp.gt ?x73 ?x76)))))))))
(assert
 (let ((?x75 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x44 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x73 (fp.sub roundNearestTiesToEven ?x24 ?x44)))
 (or (or (fp.isNaN ?x73) (fp.isNaN ?x75)) (fp.lt ?x73 ?x75)))))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x25 ?x44))))
(assert
 (let ((?x47 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x25 ?x47))))
(assert
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x87 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x88 (fp.sub roundNearestTiesToEven ?x87 ?x24)))
 (not (fp.isNaN ?x88))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x91 (fp.sub roundNearestTiesToEven ?x31 ?x25)))
 (not (fp.isNaN ?x91))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x91 (fp.sub roundNearestTiesToEven ?x31 ?x25)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x87 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x88 (fp.sub roundNearestTiesToEven ?x87 ?x24)))
 (not (fp.gt ?x88 ?x91)))))))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x32 ?x44))))
(assert
 (let ((?x47 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x32 ?x47))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x49 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x49 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x61 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x61 ?x22))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x75 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x75 ?x44))))
(assert
 (let ((?x47 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x75 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x75 ?x47))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x87 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x87 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x87 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x87 ?x22))))
(assert
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
(let ((?x42 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
(let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
(let ((?x62 (fp.sub roundNearestTiesToEven ?x17 ?x42)))
(let ((?x106 (fp.sub roundNearestTiesToEven ?x62 ?x58)))
(not (and (fp.geq ?x106 ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ?x106 ((_ to_fp 8 24) (_ bv1124139008 32)))))))))))
(check-sat)
(exit)
