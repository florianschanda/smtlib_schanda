(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.311.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x17 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x17 ?x22))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x25 ?x17)))
 (not (fp.isNaN ?x27))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x25 ?x17)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x31 (fp.sub roundNearestTiesToEven ?x30 ?x19)))
 (not (fp.gt ?x31 ?x27)))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x34 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x34 ?x22))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x39 (fp.sub roundNearestTiesToEven ?x37 ?x38)))
 (not (fp.isNaN ?x39))))))))
(assert
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x25 ?x34)))
 (not (fp.isNaN ?x42))))))
(assert
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x25 ?x34)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x39 (fp.sub roundNearestTiesToEven ?x37 ?x38)))
 (not (fp.gt ?x39 ?x42)))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x47 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x47 ?x22))))
(assert
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x50 ?x51)))
 (not (fp.isNaN ?x52))))))))))
(assert
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x55 (fp.sub roundNearestTiesToEven ?x25 ?x47)))
 (not (fp.isNaN ?x55))))))
(assert
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x55 (fp.sub roundNearestTiesToEven ?x25 ?x47)))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x50 ?x51)))
 (not (fp.gt ?x52 ?x55)))))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x60 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x60 ?x22))))
(assert
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x25 ?x60)))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x51 ?x47)))
 (let ((?x65 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x65 ?x66)))
 (or (fp.isNaN ?x63) (fp.gt ?x67 ?x63)))))))))))))))
(assert
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x51 ?x47)))
 (let ((?x65 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x65 ?x66)))
 (not (fp.isNaN ?x67))))))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6))))
(assert
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x51 ?x47)))
 (let ((?x65 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x65 ?x66)))
 (not (fp.lt ?x67 ?x60)))))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x76 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x76 ?x22))))
(assert
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x79 (fp.sub roundNearestTiesToEven ?x25 ?x76)))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x51 ?x47)))
 (let ((?x82 (fp.add roundNearestTiesToEven ?x66 ?x60)))
 (let ((?x81 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x83 (fp.sub roundNearestTiesToEven ?x81 ?x82)))
 (or (fp.isNaN ?x79) (fp.gt ?x83 ?x79)))))))))))))))))
(assert
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x51 ?x47)))
 (let ((?x82 (fp.add roundNearestTiesToEven ?x66 ?x60)))
 (let ((?x81 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x83 (fp.sub roundNearestTiesToEven ?x81 ?x82)))
 (not (fp.isNaN ?x83))))))))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1))))
(assert
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x60 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x51 ?x47)))
 (let ((?x82 (fp.add roundNearestTiesToEven ?x66 ?x60)))
 (let ((?x81 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x83 (fp.sub roundNearestTiesToEven ?x81 ?x82)))
 (not (fp.lt ?x83 ?x76)))))))))))))))
(assert
 (let ((?x93 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x30 ?x93))))
(assert
 (let ((?x96 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x30 ?x96))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x31 (fp.sub roundNearestTiesToEven ?x30 ?x19)))
 (not (fp.isNaN ?x31))))))
(assert
 (let ((?x93 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x37 ?x93))))
(assert
 (let ((?x96 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x37 ?x96))))
(assert
 (let ((?x93 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x50 ?x93))))
(assert
 (let ((?x96 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x50 ?x96))))
(assert
 (let ((?x93 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x65 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x65 ?x93))))
(assert
 (let ((?x96 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x65 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x65 ?x96))))
(assert
 (let ((?x93 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x81 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x81 ?x93))))
(assert
 (let ((?x96 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x81 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x81 ?x96))))
(assert
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
(let ((?x60 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
(let ((?x47 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
(let ((?x34 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
(let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
(let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x38 (fp.sub roundNearestTiesToEven ?x19 ?x17)))
(let ((?x51 (fp.sub roundNearestTiesToEven ?x38 ?x34)))
(let ((?x66 (fp.sub roundNearestTiesToEven ?x51 ?x47)))
(let ((?x82 (fp.add roundNearestTiesToEven ?x66 ?x60)))
(let ((?x108 (fp.add roundNearestTiesToEven ?x82 ?x76)))
(not (and (fp.geq ?x108 ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ?x108 ((_ to_fp 8 24) (_ bv1124139008 32)))))))))))))))))
(check-sat)
(exit)
