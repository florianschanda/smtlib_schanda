(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.117.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.geq ?x15 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.leq ?x15 ?x20))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x25 (fp.sub roundNearestTiesToEven ?x23 ?x15)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x27 ?x17)))
 (or (fp.isNaN ?x25) (fp.gt ?x28 ?x25)))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x27 ?x17)))
 (not (fp.isNaN ?x28))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x27 ?x17)))
 (not (fp.lt ?x28 ?x15)))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x37 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x37 ?x20))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 (fp.add roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x40 ?x41)))
 (not (fp.isNaN ?x42))))))))
(assert
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x45 (fp.sub roundNearestTiesToEven ?x23 ?x37)))
 (not (fp.isNaN ?x45))))))
(assert
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x45 (fp.sub roundNearestTiesToEven ?x23 ?x37)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 (fp.add roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x42 (fp.sub roundNearestTiesToEven ?x40 ?x41)))
 (not (fp.gt ?x42 ?x45)))))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.geq ?x50 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.leq ?x50 ?x20))))
(assert
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x53 (fp.sub roundNearestTiesToEven ?x23 ?x50)))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 (fp.add roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x56 (fp.sub roundNearestTiesToEven ?x41 ?x37)))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x57 (fp.sub roundNearestTiesToEven ?x55 ?x56)))
 (or (fp.isNaN ?x53) (fp.gt ?x57 ?x53)))))))))))))
(assert
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 (fp.add roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x56 (fp.sub roundNearestTiesToEven ?x41 ?x37)))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x57 (fp.sub roundNearestTiesToEven ?x55 ?x56)))
 (not (fp.isNaN ?x57))))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3))))
(assert
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 (fp.add roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x56 (fp.sub roundNearestTiesToEven ?x41 ?x37)))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x57 (fp.sub roundNearestTiesToEven ?x55 ?x56)))
 (not (fp.lt ?x57 ?x50)))))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.geq ?x66 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.leq ?x66 ?x20))))
(assert
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 (fp.add roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x56 (fp.sub roundNearestTiesToEven ?x41 ?x37)))
 (let ((?x69 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x71 (fp.sub roundNearestTiesToEven ?x69 (fp.add roundNearestTiesToEven ?x56 ?x50))))
 (not (fp.isNaN ?x71)))))))))))
(assert
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x23 ?x66)))
 (not (fp.isNaN ?x74))))))
(assert
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x23 ?x66)))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 (fp.add roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x56 (fp.sub roundNearestTiesToEven ?x41 ?x37)))
 (let ((?x69 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x71 (fp.sub roundNearestTiesToEven ?x69 (fp.add roundNearestTiesToEven ?x56 ?x50))))
 (not (fp.gt ?x71 ?x74))))))))))))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.geq ?x27 ?x80))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x27 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.leq ?x27 ?x83))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.geq ?x40 ?x80))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.leq ?x40 ?x83))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.geq ?x55 ?x80))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.leq ?x55 ?x83))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x69 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.geq ?x69 ?x80))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x69 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.leq ?x69 ?x83))))
(assert
 (not false))
(check-sat)
(exit)
