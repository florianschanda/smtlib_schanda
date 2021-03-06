(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.652.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
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
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x31 (fp.sub roundNearestTiesToEven ?x29 ?x30)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x17 ?x24)))
 (or (or (fp.isNaN ?x26) (fp.isNaN ?x31)) (fp.gt ?x26 ?x31)))))))))
(assert
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x17 ?x24)))
 (or (or (fp.isNaN ?x26) (fp.isNaN ?x30)) (fp.lt ?x26 ?x30)))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x24 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x24 ?x22))))
(assert
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x46 (fp.sub roundNearestTiesToEven ?x29 ?x45)))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x43 (fp.sub roundNearestTiesToEven ?x24 ?x42)))
 (or (or (fp.isNaN ?x43) (fp.isNaN ?x46)) (fp.gt ?x43 ?x46)))))))))
(assert
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x43 (fp.sub roundNearestTiesToEven ?x24 ?x42)))
 (or (or (fp.isNaN ?x43) (fp.isNaN ?x45)) (fp.lt ?x43 ?x45)))))))
(assert
 (let ((?x56 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x30 ?x56))))
(assert
 (let ((?x59 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x30 ?x59))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x42 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x42 ?x22))))
(assert
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x69 (fp.sub roundNearestTiesToEven ?x29 ?x68)))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x42 (fp.add roundNearestTiesToEven ?x63 ?x64))))
 (or (or (fp.isNaN ?x66) (fp.isNaN ?x69)) (fp.gt ?x66 ?x69))))))))))
(assert
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x42 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x66 (fp.sub roundNearestTiesToEven ?x42 (fp.add roundNearestTiesToEven ?x63 ?x64))))
 (or (or (fp.isNaN ?x66) (fp.isNaN ?x68)) (fp.lt ?x66 ?x68))))))))
(assert
 (let ((?x56 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x45 ?x56))))
(assert
 (let ((?x59 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x45 ?x59))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x63 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x63 ?x22))))
(assert
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x85 (fp.sub roundNearestTiesToEven ?x29 ?x84)))
 (let ((?x56 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x82 (fp.sub roundNearestTiesToEven ?x63 ?x56)))
 (or (or (fp.isNaN ?x82) (fp.isNaN ?x85)) (fp.gt ?x82 ?x85)))))))))
(assert
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x56 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x82 (fp.sub roundNearestTiesToEven ?x63 ?x56)))
 (or (or (fp.isNaN ?x82) (fp.isNaN ?x84)) (fp.lt ?x82 ?x84)))))))
(assert
 (let ((?x56 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x64 ?x56))))
(assert
 (let ((?x59 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x64 ?x59))))
(assert
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x96 (fp.sub roundNearestTiesToEven ?x29 ?x64)))
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x98 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x99 (fp.sub roundNearestTiesToEven ?x98 ?x63)))
 (or (fp.isNaN ?x96) (fp.gt ?x99 ?x96)))))))))
(assert
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x98 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x99 (fp.sub roundNearestTiesToEven ?x98 ?x63)))
 (not (fp.isNaN ?x99))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))))
(assert
 (let ((?x64 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x63 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x98 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x99 (fp.sub roundNearestTiesToEven ?x98 ?x63)))
 (not (fp.lt ?x99 ?x64)))))))
(assert
 (let ((?x56 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x68 ?x56))))
(assert
 (let ((?x59 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x68 ?x59))))
(assert
 (let ((?x56 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x84 ?x56))))
(assert
 (let ((?x59 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x84 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x84 ?x59))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x98 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x98 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x98 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x98 ?x22))))
(assert
 (let (($x120 (and (fp.geq ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9) ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9) ((_ to_fp 8 24) (_ bv1124139008 32))))))
(not $x120)))
(check-sat)
(exit)
