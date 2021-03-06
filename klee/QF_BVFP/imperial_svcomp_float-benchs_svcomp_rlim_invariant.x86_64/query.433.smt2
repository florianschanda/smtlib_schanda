(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.433.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x17 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x17 ?x22))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x33 (fp.sub roundNearestTiesToEven ?x31 ?x32)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x17 (fp.add roundNearestTiesToEven ?x24 ?x25))))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x33)) (fp.gt ?x28 ?x33))))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x17 (fp.add roundNearestTiesToEven ?x24 ?x25))))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x32)) (fp.lt ?x28 ?x32))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x24 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x24 ?x22))))
(assert
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x53 (fp.sub roundNearestTiesToEven ?x31 ?x52)))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x47 (fp.add roundNearestTiesToEven ?x45 ?x46)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x24 (fp.sub roundNearestTiesToEven ?x47 ?x48))))
 (or (or (fp.isNaN ?x50) (fp.isNaN ?x53)) (fp.gt ?x50 ?x53))))))))))))
(assert
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x47 (fp.add roundNearestTiesToEven ?x45 ?x46)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x24 (fp.sub roundNearestTiesToEven ?x47 ?x48))))
 (or (or (fp.isNaN ?x50) (fp.isNaN ?x52)) (fp.lt ?x50 ?x52))))))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x25 ?x45))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x25 ?x64))))
(assert
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x31 ?x25)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x69 (fp.sub roundNearestTiesToEven ?x68 ?x24)))
 (or (fp.isNaN ?x66) (fp.gt ?x69 ?x66)))))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x69 (fp.sub roundNearestTiesToEven ?x68 ?x24)))
 (not (fp.isNaN ?x69))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6))))
(assert
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x69 (fp.sub roundNearestTiesToEven ?x68 ?x24)))
 (not (fp.lt ?x69 ?x25)))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x32 ?x45))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x32 ?x64))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x46 ?x45))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x46 ?x64))))
(assert
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x82 (fp.sub roundNearestTiesToEven ?x31 ?x46)))
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x85 (fp.sub roundNearestTiesToEven ?x84 ?x45)))
 (or (fp.isNaN ?x82) (fp.gt ?x85 ?x82)))))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x85 (fp.sub roundNearestTiesToEven ?x84 ?x45)))
 (not (fp.isNaN ?x85))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7))))
(assert
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x85 (fp.sub roundNearestTiesToEven ?x84 ?x45)))
 (not (fp.lt ?x85 ?x46)))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x48 ?x45))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x48 ?x64))))
(assert
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x47 (fp.add roundNearestTiesToEven ?x45 ?x46)))
 (let ((?x96 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x97 (fp.sub roundNearestTiesToEven ?x96 ?x47)))
 (not (fp.isNaN ?x97))))))))
(assert
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x100 (fp.sub roundNearestTiesToEven ?x31 ?x48)))
 (not (fp.isNaN ?x100))))))
(assert
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x100 (fp.sub roundNearestTiesToEven ?x31 ?x48)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x47 (fp.add roundNearestTiesToEven ?x45 ?x46)))
 (let ((?x96 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x97 (fp.sub roundNearestTiesToEven ?x96 ?x47)))
 (not (fp.gt ?x97 ?x100)))))))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x52 ?x45))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x52 ?x64))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x68 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x68 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x84 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x84 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x96 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x96 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x96 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x96 ?x22))))
(assert
 (let (($x119 (and (fp.geq ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9) ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9) ((_ to_fp 8 24) (_ bv1124139008 32))))))
(not $x119)))
(check-sat)
(exit)
