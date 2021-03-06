(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.124.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.geq ?x15 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.leq ?x15 ?x20))))
(assert
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x34 (fp.sub roundNearestTiesToEven ?x32 ?x33)))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x26 (fp.add roundNearestTiesToEven ?x23 ?x24)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x15 (fp.sub roundNearestTiesToEven ?x26 ?x27))))
 (or (or (fp.isNaN ?x29) (fp.isNaN ?x34)) (fp.gt ?x29 ?x34))))))))))))
(assert
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x26 (fp.add roundNearestTiesToEven ?x23 ?x24)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x15 (fp.sub roundNearestTiesToEven ?x26 ?x27))))
 (or (or (fp.isNaN ?x29) (fp.isNaN ?x33)) (fp.lt ?x29 ?x33))))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.geq ?x43 ?x23))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.leq ?x43 ?x46))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x48 ?x15)))
 (not (fp.isNaN ?x49))))))
(assert
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x32 ?x43)))
 (not (fp.isNaN ?x52))))))
(assert
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x32 ?x43)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x48 ?x15)))
 (not (fp.gt ?x49 ?x52)))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.geq ?x24 ?x23))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.leq ?x24 ?x46))))
(assert
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x59 (fp.sub roundNearestTiesToEven ?x32 ?x24)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x61 ?x23)))
 (or (fp.isNaN ?x59) (fp.gt ?x62 ?x59)))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x61 ?x23)))
 (not (fp.isNaN ?x62))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6))))
(assert
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x61 ?x23)))
 (not (fp.lt ?x62 ?x24)))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x27 ?x23))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x27 ?x46))))
(assert
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x26 (fp.add roundNearestTiesToEven ?x23 ?x24)))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x73 ?x26)))
 (not (fp.isNaN ?x74))))))))
(assert
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x77 (fp.sub roundNearestTiesToEven ?x32 ?x27)))
 (not (fp.isNaN ?x77))))))
(assert
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x77 (fp.sub roundNearestTiesToEven ?x32 ?x27)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x26 (fp.add roundNearestTiesToEven ?x23 ?x24)))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x73 ?x26)))
 (not (fp.gt ?x74 ?x77)))))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.geq ?x33 ?x23))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x33 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.leq ?x33 ?x46))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.geq ?x48 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.leq ?x48 ?x20))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.geq ?x61 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.leq ?x61 ?x20))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.geq ?x73 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.leq ?x73 ?x20))))
(assert
 (let ((?x43 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
(let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
(let ((?x90 (fp.sub roundNearestTiesToEven ?x15 ?x43)))
(not (and (fp.geq ?x90 ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ?x90 ((_ to_fp 8 24) (_ bv1124139008 32)))))))))
(check-sat)
(exit)
