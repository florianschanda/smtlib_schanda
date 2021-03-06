(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.240.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_40 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_52 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_21 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_63 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_74 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_36 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_15 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float7 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.geq ?x19 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.leq ?x19 ?x24))))))
(assert
 (let ((?x43 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x39 ?x48)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x19 ?x34)))
 (or (or (fp.isNaN ?x36) (fp.isNaN ?x49)) (fp.gt ?x36 ?x49)))))))))))))))
(assert
 (let ((?x43 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x19 ?x34)))
 (or (or (fp.isNaN ?x36) (fp.isNaN ?x48)) (fp.lt ?x36 ?x48)))))))))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x61 (concat (select symbolic_0_float_63 (_ bv1 32)) (select symbolic_0_float_63 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_63 (_ bv3 32)) (concat (select symbolic_0_float_63 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (fp.geq ?x66 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x61 (concat (select symbolic_0_float_63 (_ bv1 32)) (select symbolic_0_float_63 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_63 (_ bv3 32)) (concat (select symbolic_0_float_63 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (fp.leq ?x66 ?x24))))))
(assert
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x72 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x76 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x72))))
 (let ((?x77 ((_ to_fp 8 24) ?x76)))
 (fp.geq ?x77 ?x78))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x72 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x76 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x72))))
 (let ((?x77 ((_ to_fp 8 24) ?x76)))
 (fp.leq ?x77 ?x81))))))
(assert
 (let ((?x72 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x76 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x72))))
 (let ((?x77 ((_ to_fp 8 24) ?x76)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x85 (fp.sub roundNearestTiesToEven ?x39 ?x77)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x61 (concat (select symbolic_0_float_63 (_ bv1 32)) (select symbolic_0_float_63 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_63 (_ bv3 32)) (concat (select symbolic_0_float_63 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (let ((?x83 (fp.sub roundNearestTiesToEven ?x66 ?x19)))
 (or (or (fp.isNaN ?x83) (fp.isNaN ?x85)) (fp.gt ?x83 ?x85)))))))))))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (fp.geq ?x34 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (fp.leq ?x34 ?x24))))))
(assert
 (let ((?x107 (concat (select symbolic_0_float_36 (_ bv1 32)) (select symbolic_0_float_36 (_ bv0 32)))))
 (let ((?x111 (concat (select symbolic_0_float_36 (_ bv3 32)) (concat (select symbolic_0_float_36 (_ bv2 32)) ?x107))))
 (let ((?x112 ((_ to_fp 8 24) ?x111)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x113 (fp.sub roundNearestTiesToEven ?x39 ?x112)))
 (let ((?x95 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x102 (fp.sub roundNearestTiesToEven ?x34 (fp.add roundNearestTiesToEven ?x78 ?x100))))
 (or (or (fp.isNaN ?x102) (fp.isNaN ?x113)) (fp.gt ?x102 ?x113))))))))))))))))
(assert
 (let ((?x107 (concat (select symbolic_0_float_36 (_ bv1 32)) (select symbolic_0_float_36 (_ bv0 32)))))
 (let ((?x111 (concat (select symbolic_0_float_36 (_ bv3 32)) (concat (select symbolic_0_float_36 (_ bv2 32)) ?x107))))
 (let ((?x112 ((_ to_fp 8 24) ?x111)))
 (let ((?x95 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x102 (fp.sub roundNearestTiesToEven ?x34 (fp.add roundNearestTiesToEven ?x78 ?x100))))
 (or (or (fp.isNaN ?x102) (fp.isNaN ?x112)) (fp.lt ?x102 ?x112))))))))))))))
(assert
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (fp.geq ?x48 ?x78))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x43 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (fp.leq ?x48 ?x81))))))
(assert
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x95 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (fp.geq ?x100 ?x78))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x95 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (fp.leq ?x100 ?x81))))))
(assert
 (let ((?x95 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x126 (fp.sub roundNearestTiesToEven ?x39 ?x100)))
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x131 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x135 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x131))))
 (let ((?x136 ((_ to_fp 8 24) ?x135)))
 (let ((?x137 (fp.sub roundNearestTiesToEven ?x136 ?x78)))
 (or (fp.isNaN ?x126) (fp.gt ?x137 ?x126)))))))))))))
(assert
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x131 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x135 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x131))))
 (let ((?x136 ((_ to_fp 8 24) ?x135)))
 (let ((?x137 (fp.sub roundNearestTiesToEven ?x136 ?x78)))
 (not (fp.isNaN ?x137))))))))
(assert
 (let ((?x95 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (not (fp.isNaN ?x100))))))
(assert
 (let ((?x95 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x131 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x135 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x131))))
 (let ((?x136 ((_ to_fp 8 24) ?x135)))
 (let ((?x137 (fp.sub roundNearestTiesToEven ?x136 ?x78)))
 (not (fp.lt ?x137 ?x100)))))))))))
(assert
 (let ((?x78 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x107 (concat (select symbolic_0_float_36 (_ bv1 32)) (select symbolic_0_float_36 (_ bv0 32)))))
 (let ((?x111 (concat (select symbolic_0_float_36 (_ bv3 32)) (concat (select symbolic_0_float_36 (_ bv2 32)) ?x107))))
 (let ((?x112 ((_ to_fp 8 24) ?x111)))
 (fp.geq ?x112 ?x78))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x107 (concat (select symbolic_0_float_36 (_ bv1 32)) (select symbolic_0_float_36 (_ bv0 32)))))
 (let ((?x111 (concat (select symbolic_0_float_36 (_ bv3 32)) (concat (select symbolic_0_float_36 (_ bv2 32)) ?x107))))
 (let ((?x112 ((_ to_fp 8 24) ?x111)))
 (fp.leq ?x112 ?x81))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x131 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x135 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x131))))
 (let ((?x136 ((_ to_fp 8 24) ?x135)))
 (fp.geq ?x136 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x131 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x135 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x131))))
 (let ((?x136 ((_ to_fp 8 24) ?x135)))
 (fp.leq ?x136 ?x24))))))
(assert
 (not false))
(check-sat)
(exit)
