(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.222.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.geq ?x15 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.leq ?x15 ?x20))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x33 (fp.sub roundNearestTiesToEven ?x31 ?x32)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x25 (fp.add roundNearestTiesToEven ?x22 ?x23)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x15 (fp.sub roundNearestTiesToEven ?x25 ?x26))))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x33)) (fp.gt ?x28 ?x33))))))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x25 (fp.add roundNearestTiesToEven ?x22 ?x23)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x15 (fp.sub roundNearestTiesToEven ?x25 ?x26))))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x32)) (fp.lt ?x28 ?x32))))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.geq ?x22 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.leq ?x22 ?x20))))
(assert
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x31 ?x48)))
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x46 (fp.sub roundNearestTiesToEven ?x22 ?x45)))
 (or (or (fp.isNaN ?x46) (fp.isNaN ?x49)) (fp.gt ?x46 ?x49)))))))))
(assert
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x46 (fp.sub roundNearestTiesToEven ?x22 ?x45)))
 (or (or (fp.isNaN ?x46) (fp.isNaN ?x48)) (fp.lt ?x46 ?x48)))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x23 ?x45))))
(assert
 (let ((?x60 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x23 ?x60))))
(assert
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x31 ?x23)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x65 (fp.sub roundNearestTiesToEven ?x64 ?x22)))
 (or (fp.isNaN ?x62) (fp.gt ?x65 ?x62)))))))))
(assert
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x65 (fp.sub roundNearestTiesToEven ?x64 ?x22)))
 (not (fp.isNaN ?x65))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))))
(assert
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x65 (fp.sub roundNearestTiesToEven ?x64 ?x22)))
 (not (fp.lt ?x65 ?x23)))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.geq ?x26 ?x45))))
(assert
 (let ((?x60 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.leq ?x26 ?x60))))
(assert
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x25 (fp.add roundNearestTiesToEven ?x22 ?x23)))
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x77 (fp.sub roundNearestTiesToEven ?x76 ?x25)))
 (not (fp.isNaN ?x77))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x80 (fp.sub roundNearestTiesToEven ?x31 ?x26)))
 (not (fp.isNaN ?x80))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x80 (fp.sub roundNearestTiesToEven ?x31 ?x26)))
 (let ((?x23 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x25 (fp.add roundNearestTiesToEven ?x22 ?x23)))
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x77 (fp.sub roundNearestTiesToEven ?x76 ?x25)))
 (not (fp.gt ?x77 ?x80)))))))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.geq ?x32 ?x45))))
(assert
 (let ((?x60 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.leq ?x32 ?x60))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.geq ?x48 ?x45))))
(assert
 (let ((?x60 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x48 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.leq ?x48 ?x60))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.geq ?x64 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.leq ?x64 ?x20))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.geq ?x76 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x76 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.leq ?x76 ?x20))))
(assert
 (not false))
(check-sat)
(exit)
