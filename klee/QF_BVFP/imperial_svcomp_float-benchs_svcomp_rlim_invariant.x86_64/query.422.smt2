(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.422.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x17 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x17 ?x22))))
(assert
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x33)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x17 (fp.sub roundNearestTiesToEven ?x25 ?x26))))
 (or (or (fp.isNaN ?x29) (fp.isNaN ?x34)) (fp.gt ?x29 ?x34))))))))))
(assert
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x17 (fp.sub roundNearestTiesToEven ?x25 ?x26))))
 (or (or (fp.isNaN ?x29) (fp.isNaN ?x33)) (fp.lt ?x29 ?x33))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x43 ?x25))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x43 ?x46))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x48 ?x17)))
 (not (fp.isNaN ?x49))))))
(assert
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x32 ?x43)))
 (not (fp.isNaN ?x52))))))
(assert
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x32 ?x43)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x48 ?x17)))
 (not (fp.gt ?x49 ?x52)))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x57 ?x25))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x57 ?x46))))
(assert
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x60 (fp.sub roundNearestTiesToEven ?x32 ?x57)))
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x17 ?x43)))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x62 ?x63)))
 (or (fp.isNaN ?x60) (fp.gt ?x64 ?x60)))))))))))
(assert
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x17 ?x43)))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x62 ?x63)))
 (not (fp.isNaN ?x64))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6))))
(assert
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x17 ?x43)))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x62 ?x63)))
 (not (fp.lt ?x64 ?x57)))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x73 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x73 ?x22))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x76 ?x25))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x76 ?x46))))
(assert
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x82 (fp.sub roundNearestTiesToEven ?x32 ?x76)))
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x17 ?x43)))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x80 (fp.sub roundNearestTiesToEven ?x73 (fp.add roundNearestTiesToEven ?x63 ?x57))))
 (or (or (fp.isNaN ?x80) (fp.isNaN ?x82)) (fp.gt ?x80 ?x82))))))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x26 ?x25))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x26 ?x46))))
(assert
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x89 (fp.sub roundNearestTiesToEven ?x32 ?x26)))
 (not (fp.isNaN ?x89))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x89 (fp.sub roundNearestTiesToEven ?x32 ?x26)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x92 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x93 (fp.sub roundNearestTiesToEven ?x92 ?x25)))
 (not (fp.gt ?x93 ?x89)))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x33 ?x25))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x33 ?x46))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x48 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x48 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x62 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x62 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x92 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x92 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x92 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x92 ?x22))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x92 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x93 (fp.sub roundNearestTiesToEven ?x92 ?x25)))
 (not (fp.isNaN ?x93))))))
(assert
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
(let ((?x57 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
(let ((?x43 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
(let ((?x17 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
(let ((?x63 (fp.sub roundNearestTiesToEven ?x17 ?x43)))
(let ((?x73 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
(let ((?x80 (fp.sub roundNearestTiesToEven ?x73 (fp.add roundNearestTiesToEven ?x63 ?x57))))
(let (($x112 (and (and (not (fp.isNaN ?x80)) (not (fp.isNaN ?x76))) (not (fp.lt ?x80 ?x76)))))
(not $x112))))))))))
(check-sat)
(exit)
