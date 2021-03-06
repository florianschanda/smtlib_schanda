(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.678.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x17 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x17 ?x22))))
(assert
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x31 (fp.sub roundNearestTiesToEven ?x29 ?x30)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x17 ?x24)))
 (or (or (fp.isNaN ?x26) (fp.isNaN ?x31)) (fp.gt ?x26 ?x31)))))))))
(assert
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x26 (fp.sub roundNearestTiesToEven ?x17 ?x24)))
 (or (or (fp.isNaN ?x26) (fp.isNaN ?x30)) (fp.lt ?x26 ?x30)))))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x40 ?x42))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x40 ?x45))))
(assert
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x29 ?x40)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x49 ?x17)))
 (or (fp.isNaN ?x47) (fp.gt ?x50 ?x47)))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x49 ?x17)))
 (not (fp.isNaN ?x50))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6))))
(assert
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x49 ?x17)))
 (not (fp.lt ?x50 ?x40)))))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x59 ?x42))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x59 ?x45))))
(assert
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x62 (fp.add roundNearestTiesToEven ?x17 ?x40))))
 (not (fp.isNaN ?x64)))))))
(assert
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x29 ?x59)))
 (not (fp.isNaN ?x67))))))
(assert
 (let ((?x59 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x29 ?x59)))
 (let ((?x40 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x62 (fp.add roundNearestTiesToEven ?x17 ?x40))))
 (not (fp.gt ?x64 ?x67))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x24 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x24 ?x22))))
(assert
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x78 (fp.sub roundNearestTiesToEven ?x29 ?x77)))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x75 (fp.sub roundNearestTiesToEven ?x24 ?x74)))
 (or (or (fp.isNaN ?x75) (fp.isNaN ?x78)) (fp.gt ?x75 ?x78)))))))))
(assert
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x75 (fp.sub roundNearestTiesToEven ?x24 ?x74)))
 (or (or (fp.isNaN ?x75) (fp.isNaN ?x77)) (fp.lt ?x75 ?x77)))))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x30 ?x42))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x30 ?x45))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x49 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x49 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x49 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x62 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x62 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x62 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x74 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x74 ?x22))))
(assert
 (let ((?x97 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x29 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x98 (fp.sub roundNearestTiesToEven ?x29 ?x97)))
 (let ((?x42 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x95 (fp.sub roundNearestTiesToEven ?x74 ?x42)))
 (or (or (fp.isNaN ?x95) (fp.isNaN ?x98)) (fp.gt ?x95 ?x98)))))))))
(assert
 (let ((?x97 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x42 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x74 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x95 (fp.sub roundNearestTiesToEven ?x74 ?x42)))
 (or (or (fp.isNaN ?x95) (fp.isNaN ?x97)) (fp.lt ?x95 ?x97)))))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x77 ?x42))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x77 ?x45))))
(assert
 (let ((?x42 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x97 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x97 ?x42))))
(assert
 (let ((?x45 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x97 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x97 ?x45))))
(assert
 (not false))
(check-sat)
(exit)
