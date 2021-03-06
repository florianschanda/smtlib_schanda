(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.492.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
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
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x29 ?x19)))
 (or (fp.isNaN ?x27) (fp.gt ?x30 ?x27)))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x29 ?x19)))
 (not (fp.isNaN ?x30))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x29 ?x19)))
 (not (fp.lt ?x30 ?x17)))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x39 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x39 ?x22))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (fp.add roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x44 (fp.sub roundNearestTiesToEven ?x42 ?x43)))
 (not (fp.isNaN ?x44))))))))
(assert
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x25 ?x39)))
 (not (fp.isNaN ?x47))))))
(assert
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x25 ?x39)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (fp.add roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x44 (fp.sub roundNearestTiesToEven ?x42 ?x43)))
 (not (fp.gt ?x44 ?x47)))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x52 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x52 ?x22))))
(assert
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x55 (fp.sub roundNearestTiesToEven ?x25 ?x52)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (fp.add roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x58 (fp.sub roundNearestTiesToEven ?x43 ?x39)))
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x59 (fp.sub roundNearestTiesToEven ?x57 ?x58)))
 (or (fp.isNaN ?x55) (fp.gt ?x59 ?x55)))))))))))))
(assert
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (fp.add roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x58 (fp.sub roundNearestTiesToEven ?x43 ?x39)))
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x59 (fp.sub roundNearestTiesToEven ?x57 ?x58)))
 (not (fp.isNaN ?x59))))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4))))
(assert
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (fp.add roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x58 (fp.sub roundNearestTiesToEven ?x43 ?x39)))
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x59 (fp.sub roundNearestTiesToEven ?x57 ?x58)))
 (not (fp.lt ?x59 ?x52)))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x68 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x68 ?x22))))
(assert
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (fp.add roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x58 (fp.sub roundNearestTiesToEven ?x43 ?x39)))
 (let ((?x72 (fp.add roundNearestTiesToEven ?x58 ?x52)))
 (let ((?x71 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x73 (fp.sub roundNearestTiesToEven ?x71 ?x72)))
 (not (fp.isNaN ?x73))))))))))))
(assert
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x76 (fp.sub roundNearestTiesToEven ?x25 ?x68)))
 (not (fp.isNaN ?x76))))))
(assert
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x76 (fp.sub roundNearestTiesToEven ?x25 ?x68)))
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (fp.add roundNearestTiesToEven ?x19 ?x17)))
 (let ((?x58 (fp.sub roundNearestTiesToEven ?x43 ?x39)))
 (let ((?x72 (fp.add roundNearestTiesToEven ?x58 ?x52)))
 (let ((?x71 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x73 (fp.sub roundNearestTiesToEven ?x71 ?x72)))
 (not (fp.gt ?x73 ?x76)))))))))))))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x81 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x81 ?x83))))
(assert
 (let ((?x86 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x81 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x81 ?x86))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x88 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x88 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x88 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x88 ?x22))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x29 ?x83))))
(assert
 (let ((?x86 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x29 ?x86))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x42 ?x83))))
(assert
 (let ((?x86 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x42 ?x86))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x57 ?x83))))
(assert
 (let ((?x86 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x57 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x57 ?x86))))
(assert
 (let ((?x83 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x71 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x71 ?x83))))
(assert
 (let ((?x86 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x71 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x71 ?x86))))
(assert
 (let ((?x88 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
(let ((?x25 ((_ to_fp 8 24) (_ bv2147483648 32))))
(let ((?x103 (fp.sub roundNearestTiesToEven ?x25 ?x88)))
(let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
(let ((?x52 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
(let ((?x39 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
(let ((?x17 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
(let ((?x19 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x43 (fp.add roundNearestTiesToEven ?x19 ?x17)))
(let ((?x58 (fp.sub roundNearestTiesToEven ?x43 ?x39)))
(let ((?x72 (fp.add roundNearestTiesToEven ?x58 ?x52)))
(let ((?x81 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
(let ((?x100 (fp.sub roundNearestTiesToEven ?x81 (fp.sub roundNearestTiesToEven ?x72 ?x68))))
(let (($x109 (and (and (not (fp.isNaN ?x100)) (not (fp.isNaN ?x103))) (not (fp.gt ?x100 ?x103)))))
(not $x109))))))))))))))))
(check-sat)
(exit)
