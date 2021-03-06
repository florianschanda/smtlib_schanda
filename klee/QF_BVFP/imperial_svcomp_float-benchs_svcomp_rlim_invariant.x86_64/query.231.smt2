(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.231.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.geq ?x15 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.leq ?x15 ?x20))))
(assert
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x27 ?x28)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x15 ?x22)))
 (or (or (fp.isNaN ?x24) (fp.isNaN ?x29)) (fp.gt ?x24 ?x29)))))))))
(assert
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x24 (fp.sub roundNearestTiesToEven ?x15 ?x22)))
 (or (or (fp.isNaN ?x24) (fp.isNaN ?x28)) (fp.lt ?x24 ?x28)))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.geq ?x38 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x38 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.leq ?x38 ?x20))))
(assert
 (let ((?x43 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.geq ?x41 ?x43))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.leq ?x41 ?x46))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.geq ?x22 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.leq ?x22 ?x20))))
(assert
 (let ((?x53 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x54 (fp.sub roundNearestTiesToEven ?x27 ?x53)))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x22 ?x50)))
 (or (or (fp.isNaN ?x51) (fp.isNaN ?x54)) (fp.gt ?x51 ?x54)))))))))
(assert
 (let ((?x53 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x22 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x22 ?x50)))
 (or (or (fp.isNaN ?x51) (fp.isNaN ?x53)) (fp.lt ?x51 ?x53)))))))
(assert
 (let ((?x43 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.geq ?x28 ?x43))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.leq ?x28 ?x46))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.geq ?x50 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.leq ?x50 ?x20))))
(assert
 (let ((?x69 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x70 (fp.sub roundNearestTiesToEven ?x27 ?x69)))
 (let ((?x43 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x50 ?x43)))
 (or (or (fp.isNaN ?x67) (fp.isNaN ?x70)) (fp.gt ?x67 ?x70)))))))))
(assert
 (let ((?x69 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x43 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x50 ?x43)))
 (or (or (fp.isNaN ?x67) (fp.isNaN ?x69)) (fp.lt ?x67 ?x69)))))))
(assert
 (let ((?x43 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x53 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x53 ?x43))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x53 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x53 ?x46))))
(assert
 (let ((?x43 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x69 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.geq ?x69 ?x43))))
(assert
 (let ((?x46 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x69 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.leq ?x69 ?x46))))
(assert
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
(let ((?x27 ((_ to_fp 8 24) (_ bv2147483648 32))))
(let ((?x86 (fp.sub roundNearestTiesToEven ?x27 ?x41)))
(let ((?x15 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
(let ((?x38 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
(let ((?x83 (fp.sub roundNearestTiesToEven ?x38 ?x15)))
(let (($x92 (and (and (not (fp.isNaN ?x83)) (not (fp.isNaN ?x86))) (not (fp.gt ?x83 ?x86)))))
(not $x92)))))))))
(check-sat)
(exit)
