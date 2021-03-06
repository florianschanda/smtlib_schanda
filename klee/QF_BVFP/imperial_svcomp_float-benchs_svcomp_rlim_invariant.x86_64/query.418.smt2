(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.418.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x17 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x17 ?x22))))
(assert
 (let ((?x36 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x35 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x37 (fp.sub roundNearestTiesToEven ?x35 ?x36)))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x24 ?x25)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x27 ?x28)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x17 (fp.add roundNearestTiesToEven ?x29 ?x30))))
 (or (or (fp.isNaN ?x32) (fp.isNaN ?x37)) (fp.gt ?x32 ?x37))))))))))))))
(assert
 (let ((?x36 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x24 ?x25)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x27 ?x28)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x17 (fp.add roundNearestTiesToEven ?x29 ?x30))))
 (or (or (fp.isNaN ?x32) (fp.isNaN ?x36)) (fp.lt ?x32 ?x36))))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x24 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x24 ?x22))))
(assert
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x35 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x53 (fp.sub roundNearestTiesToEven ?x35 ?x52)))
 (let ((?x49 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x24 ?x49)))
 (or (or (fp.isNaN ?x50) (fp.isNaN ?x53)) (fp.gt ?x50 ?x53)))))))))
(assert
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x49 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x24 ?x49)))
 (or (or (fp.isNaN ?x50) (fp.isNaN ?x52)) (fp.lt ?x50 ?x52)))))))
(assert
 (let ((?x49 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x25 ?x49))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x25 ?x64))))
(assert
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x66 ?x24)))
 (not (fp.isNaN ?x67))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x35 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x70 (fp.sub roundNearestTiesToEven ?x35 ?x25)))
 (not (fp.isNaN ?x70))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x35 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x70 (fp.sub roundNearestTiesToEven ?x35 ?x25)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x66 ?x24)))
 (not (fp.gt ?x67 ?x70)))))))))
(assert
 (let ((?x49 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x28 ?x49))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x28 ?x64))))
(assert
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x24 ?x25)))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x78 (fp.sub roundNearestTiesToEven ?x77 ?x27)))
 (not (fp.isNaN ?x78))))))))
(assert
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x35 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x81 (fp.sub roundNearestTiesToEven ?x35 ?x28)))
 (not (fp.isNaN ?x81))))))
(assert
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x35 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x81 (fp.sub roundNearestTiesToEven ?x35 ?x28)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x24 ?x25)))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x78 (fp.sub roundNearestTiesToEven ?x77 ?x27)))
 (not (fp.gt ?x78 ?x81)))))))))))
(assert
 (let ((?x49 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x30 ?x49))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x30 ?x64))))
(assert
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x35 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x88 (fp.sub roundNearestTiesToEven ?x35 ?x30)))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x24 ?x25)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x27 ?x28)))
 (let ((?x90 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x91 (fp.sub roundNearestTiesToEven ?x90 ?x29)))
 (or (fp.isNaN ?x88) (fp.gt ?x91 ?x88)))))))))))))
(assert
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x24 ?x25)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x27 ?x28)))
 (let ((?x90 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x91 (fp.sub roundNearestTiesToEven ?x90 ?x29)))
 (not (fp.isNaN ?x91))))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6))))
(assert
 (let ((?x30 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x25 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x24 ?x25)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x27 ?x28)))
 (let ((?x90 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x91 (fp.sub roundNearestTiesToEven ?x90 ?x29)))
 (not (fp.lt ?x91 ?x30)))))))))))
(assert
 (let ((?x49 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x36 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x36 ?x49))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x36 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x36 ?x64))))
(assert
 (let ((?x49 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x52 ?x49))))
(assert
 (let ((?x64 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x52 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x52 ?x64))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x66 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x66 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x77 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x77 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x77 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x90 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x90 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x90 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x90 ?x22))))
(assert
 (let (($x116 (and (fp.geq ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9) ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9) ((_ to_fp 8 24) (_ bv1124139008 32))))))
(not $x116)))
(check-sat)
(exit)
