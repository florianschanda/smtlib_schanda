(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.259.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.geq ?x15 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.leq ?x15 ?x20))))
(assert
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x28 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x29)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x25 (fp.sub roundNearestTiesToEven ?x15 ?x23)))
 (or (or (fp.isNaN ?x25) (fp.isNaN ?x30)) (fp.gt ?x25 ?x30)))))))))
(assert
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x25 (fp.sub roundNearestTiesToEven ?x15 ?x23)))
 (or (or (fp.isNaN ?x25) (fp.isNaN ?x29)) (fp.lt ?x25 ?x29)))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x39 ?x23))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x39 ?x42))))
(assert
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x28 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x44 (fp.sub roundNearestTiesToEven ?x28 ?x39)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x46 ?x15)))
 (or (fp.isNaN ?x44) (fp.gt ?x47 ?x44)))))))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x46 ?x15)))
 (not (fp.isNaN ?x47))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))))
(assert
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x46 ?x15)))
 (not (fp.lt ?x47 ?x39)))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x56 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.geq ?x56 ?x23))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x56 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.leq ?x56 ?x42))))
(assert
 (let ((?x56 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x28 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x59 (fp.sub roundNearestTiesToEven ?x28 ?x56)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.add roundNearestTiesToEven ?x15 ?x39)))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x61 ?x62)))
 (or (fp.isNaN ?x59) (fp.gt ?x63 ?x59)))))))))))
(assert
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.add roundNearestTiesToEven ?x15 ?x39)))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x61 ?x62)))
 (not (fp.isNaN ?x63))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3))))
(assert
 (let ((?x56 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.add roundNearestTiesToEven ?x15 ?x39)))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x61 ?x62)))
 (not (fp.lt ?x63 ?x56)))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x72 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.geq ?x72 ?x23))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x72 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.leq ?x72 ?x42))))
(assert
 (let ((?x72 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x28 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x75 (fp.sub roundNearestTiesToEven ?x28 ?x72)))
 (let ((?x56 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.add roundNearestTiesToEven ?x15 ?x39)))
 (let ((?x78 (fp.add roundNearestTiesToEven ?x62 ?x56)))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x79 (fp.sub roundNearestTiesToEven ?x77 ?x78)))
 (or (fp.isNaN ?x75) (fp.gt ?x79 ?x75)))))))))))))
(assert
 (let ((?x56 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.add roundNearestTiesToEven ?x15 ?x39)))
 (let ((?x78 (fp.add roundNearestTiesToEven ?x62 ?x56)))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x79 (fp.sub roundNearestTiesToEven ?x77 ?x78)))
 (not (fp.isNaN ?x79))))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5))))
(assert
 (let ((?x72 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x56 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x62 (fp.add roundNearestTiesToEven ?x15 ?x39)))
 (let ((?x78 (fp.add roundNearestTiesToEven ?x62 ?x56)))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x79 (fp.sub roundNearestTiesToEven ?x77 ?x78)))
 (not (fp.lt ?x79 ?x72)))))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.geq ?x29 ?x23))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.leq ?x29 ?x42))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.geq ?x46 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.leq ?x46 ?x20))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.geq ?x61 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.leq ?x61 ?x20))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.geq ?x77 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.leq ?x77 ?x20))))
(assert
 (let ((?x72 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
(let ((?x56 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
(let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
(let ((?x15 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
(let ((?x62 (fp.add roundNearestTiesToEven ?x15 ?x39)))
(let ((?x78 (fp.add roundNearestTiesToEven ?x62 ?x56)))
(let ((?x96 (fp.add roundNearestTiesToEven ?x78 ?x72)))
(not (and (fp.geq ?x96 ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ?x96 ((_ to_fp 8 24) (_ bv1124139008 32)))))))))))))
(check-sat)
(exit)
