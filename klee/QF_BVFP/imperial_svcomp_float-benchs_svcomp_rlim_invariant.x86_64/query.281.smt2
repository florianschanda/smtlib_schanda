(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.281.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.geq ?x15 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.leq ?x15 ?x20))))
(assert
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x27 ?x28)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x15 ?x22)))
 (or (or (fp.isNaN ?x24) (fp.isNaN ?x29)) (fp.gt ?x24 ?x29)))))))))
(assert
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x15 ?x22)))
 (or (or (fp.isNaN ?x24) (fp.isNaN ?x28)) (fp.lt ?x24 ?x28)))))))
(assert
 (let ((?x40 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.geq ?x38 ?x40))))
(assert
 (let ((?x43 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.leq ?x38 ?x43))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x46 (fp.sub roundNearestTiesToEven ?x45 ?x15)))
 (not (fp.isNaN ?x46))))))
(assert
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x27 ?x38)))
 (not (fp.isNaN ?x49))))))
(assert
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x27 ?x38)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x46 (fp.sub roundNearestTiesToEven ?x45 ?x15)))
 (not (fp.gt ?x46 ?x49)))))))))
(assert
 (let ((?x40 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x54 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.geq ?x54 ?x40))))
(assert
 (let ((?x43 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x54 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.leq ?x54 ?x43))))
(assert
 (let ((?x54 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x57 (fp.sub roundNearestTiesToEven ?x27 ?x54)))
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x60 (fp.sub roundNearestTiesToEven ?x15 ?x38)))
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x59 ?x60)))
 (or (fp.isNaN ?x57) (fp.gt ?x61 ?x57)))))))))))
(assert
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x60 (fp.sub roundNearestTiesToEven ?x15 ?x38)))
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x59 ?x60)))
 (not (fp.isNaN ?x61))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5))))
(assert
 (let ((?x54 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x60 (fp.sub roundNearestTiesToEven ?x15 ?x38)))
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x59 ?x60)))
 (not (fp.lt ?x61 ?x54)))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.geq ?x22 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.leq ?x22 ?x20))))
(assert
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x75 (fp.sub roundNearestTiesToEven ?x27 ?x74)))
 (let ((?x40 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x72 (fp.sub roundNearestTiesToEven ?x22 ?x40)))
 (or (or (fp.isNaN ?x72) (fp.isNaN ?x75)) (fp.gt ?x72 ?x75)))))))))
(assert
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x40 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x72 (fp.sub roundNearestTiesToEven ?x22 ?x40)))
 (or (or (fp.isNaN ?x72) (fp.isNaN ?x74)) (fp.lt ?x72 ?x74)))))))
(assert
 (let ((?x40 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x28 ?x40))))
(assert
 (let ((?x43 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x28 ?x43))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.geq ?x45 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.leq ?x45 ?x20))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.geq ?x59 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.leq ?x59 ?x20))))
(assert
 (let ((?x40 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.geq ?x74 ?x40))))
(assert
 (let ((?x43 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.leq ?x74 ?x43))))
(assert
 (let ((?x54 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
(let ((?x38 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
(let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
(let ((?x60 (fp.sub roundNearestTiesToEven ?x15 ?x38)))
(let ((?x92 (fp.add roundNearestTiesToEven ?x60 ?x54)))
(not (and (fp.geq ?x92 ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ?x92 ((_ to_fp 8 24) (_ bv1124139008 32)))))))))))
(check-sat)
(exit)
