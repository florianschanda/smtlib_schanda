(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.181.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_10 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float1 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_32 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_23 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_54 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_45 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_66 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_77 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.geq ?x19 ?x20))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.leq ?x19 ?x23))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x19)))
 (not (fp.isNaN ?x28))))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x26 ?x19)))
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x34 (concat (select symbolic_0_float1 (_ bv1 32)) (select symbolic_0_float1 (_ bv0 32)))))
 (let ((?x38 (concat (select symbolic_0_float1 (_ bv3 32)) (concat (select symbolic_0_float1 (_ bv2 32)) ?x34))))
 (let ((?x39 ((_ to_fp 8 24) ?x38)))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x39 ?x20)))
 (not (fp.gt ?x40 ?x28)))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
 (let ((?x51 ((_ to_fp 8 24) ?x50)))
 (fp.geq ?x51 ?x20))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
 (let ((?x51 ((_ to_fp 8 24) ?x50)))
 (fp.leq ?x51 ?x23))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x20 ?x19)))
 (let ((?x57 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x61 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x57))))
 (let ((?x62 ((_ to_fp 8 24) ?x61)))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x62 ?x63)))
 (not (fp.isNaN ?x64))))))))))))
(assert
 (let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
 (let ((?x51 ((_ to_fp 8 24) ?x50)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x26 ?x51)))
 (not (fp.isNaN ?x67))))))))
(assert
 (let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
 (let ((?x51 ((_ to_fp 8 24) ?x50)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x26 ?x51)))
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x20 ?x19)))
 (let ((?x57 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x61 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x57))))
 (let ((?x62 ((_ to_fp 8 24) ?x61)))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x62 ?x63)))
 (not (fp.gt ?x64 ?x67)))))))))))))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x75 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (fp.geq ?x80 ?x20))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x75 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (fp.leq ?x80 ?x23))))))
(assert
 (let ((?x75 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x83 (fp.sub roundNearestTiesToEven ?x26 ?x80)))
 (let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
 (let ((?x51 ((_ to_fp 8 24) ?x50)))
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x20 ?x19)))
 (let ((?x94 (fp.sub roundNearestTiesToEven ?x63 ?x51)))
 (let ((?x88 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x92 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x88))))
 (let ((?x93 ((_ to_fp 8 24) ?x92)))
 (let ((?x95 (fp.sub roundNearestTiesToEven ?x93 ?x94)))
 (or (fp.isNaN ?x83) (fp.gt ?x95 ?x83)))))))))))))))))))))
(assert
 (let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
 (let ((?x51 ((_ to_fp 8 24) ?x50)))
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x20 ?x19)))
 (let ((?x94 (fp.sub roundNearestTiesToEven ?x63 ?x51)))
 (let ((?x88 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x92 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x88))))
 (let ((?x93 ((_ to_fp 8 24) ?x92)))
 (let ((?x95 (fp.sub roundNearestTiesToEven ?x93 ?x94)))
 (not (fp.isNaN ?x95))))))))))))))))
(assert
 (let ((?x75 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (not (fp.isNaN ?x80))))))
(assert
 (let ((?x75 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
 (let ((?x51 ((_ to_fp 8 24) ?x50)))
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x20 ?x19)))
 (let ((?x94 (fp.sub roundNearestTiesToEven ?x63 ?x51)))
 (let ((?x88 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x92 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x88))))
 (let ((?x93 ((_ to_fp 8 24) ?x92)))
 (let ((?x95 (fp.sub roundNearestTiesToEven ?x93 ?x94)))
 (not (fp.lt ?x95 ?x80)))))))))))))))))))
(assert
 (let ((?x114 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x107 (concat (select symbolic_0_float_66 (_ bv1 32)) (select symbolic_0_float_66 (_ bv0 32)))))
 (let ((?x111 (concat (select symbolic_0_float_66 (_ bv3 32)) (concat (select symbolic_0_float_66 (_ bv2 32)) ?x107))))
 (let ((?x112 ((_ to_fp 8 24) ?x111)))
 (fp.geq ?x112 ?x114))))))
(assert
 (let ((?x117 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x107 (concat (select symbolic_0_float_66 (_ bv1 32)) (select symbolic_0_float_66 (_ bv0 32)))))
 (let ((?x111 (concat (select symbolic_0_float_66 (_ bv3 32)) (concat (select symbolic_0_float_66 (_ bv2 32)) ?x107))))
 (let ((?x112 ((_ to_fp 8 24) ?x111)))
 (fp.leq ?x112 ?x117))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x122 (concat (select symbolic_0_float_77 (_ bv1 32)) (select symbolic_0_float_77 (_ bv0 32)))))
 (let ((?x126 (concat (select symbolic_0_float_77 (_ bv3 32)) (concat (select symbolic_0_float_77 (_ bv2 32)) ?x122))))
 (let ((?x127 ((_ to_fp 8 24) ?x126)))
 (fp.geq ?x127 ?x20))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x122 (concat (select symbolic_0_float_77 (_ bv1 32)) (select symbolic_0_float_77 (_ bv0 32)))))
 (let ((?x126 (concat (select symbolic_0_float_77 (_ bv3 32)) (concat (select symbolic_0_float_77 (_ bv2 32)) ?x122))))
 (let ((?x127 ((_ to_fp 8 24) ?x126)))
 (fp.leq ?x127 ?x23))))))
(assert
 (let ((?x122 (concat (select symbolic_0_float_77 (_ bv1 32)) (select symbolic_0_float_77 (_ bv0 32)))))
 (let ((?x126 (concat (select symbolic_0_float_77 (_ bv3 32)) (concat (select symbolic_0_float_77 (_ bv2 32)) ?x122))))
 (let ((?x127 ((_ to_fp 8 24) ?x126)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x133 (fp.sub roundNearestTiesToEven ?x26 ?x127)))
 (let ((?x75 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
 (let ((?x51 ((_ to_fp 8 24) ?x50)))
 (let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 (fp.sub roundNearestTiesToEven ?x20 ?x19)))
 (let ((?x94 (fp.sub roundNearestTiesToEven ?x63 ?x51)))
 (let ((?x107 (concat (select symbolic_0_float_66 (_ bv1 32)) (select symbolic_0_float_66 (_ bv0 32)))))
 (let ((?x111 (concat (select symbolic_0_float_66 (_ bv3 32)) (concat (select symbolic_0_float_66 (_ bv2 32)) ?x107))))
 (let ((?x112 ((_ to_fp 8 24) ?x111)))
 (let ((?x131 (fp.sub roundNearestTiesToEven ?x112 (fp.add roundNearestTiesToEven ?x94 ?x80))))
 (or (or (fp.isNaN ?x131) (fp.isNaN ?x133)) (fp.gt ?x131 ?x133))))))))))))))))))))))))
(assert
 (let ((?x114 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x34 (concat (select symbolic_0_float1 (_ bv1 32)) (select symbolic_0_float1 (_ bv0 32)))))
 (let ((?x38 (concat (select symbolic_0_float1 (_ bv3 32)) (concat (select symbolic_0_float1 (_ bv2 32)) ?x34))))
 (let ((?x39 ((_ to_fp 8 24) ?x38)))
 (fp.geq ?x39 ?x114))))))
(assert
 (let ((?x117 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x34 (concat (select symbolic_0_float1 (_ bv1 32)) (select symbolic_0_float1 (_ bv0 32)))))
 (let ((?x38 (concat (select symbolic_0_float1 (_ bv3 32)) (concat (select symbolic_0_float1 (_ bv2 32)) ?x34))))
 (let ((?x39 ((_ to_fp 8 24) ?x38)))
 (fp.leq ?x39 ?x117))))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x34 (concat (select symbolic_0_float1 (_ bv1 32)) (select symbolic_0_float1 (_ bv0 32)))))
 (let ((?x38 (concat (select symbolic_0_float1 (_ bv3 32)) (concat (select symbolic_0_float1 (_ bv2 32)) ?x34))))
 (let ((?x39 ((_ to_fp 8 24) ?x38)))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x39 ?x20)))
 (not (fp.isNaN ?x40))))))))
(assert
 (let ((?x114 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x57 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x61 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x57))))
 (let ((?x62 ((_ to_fp 8 24) ?x61)))
 (fp.geq ?x62 ?x114))))))
(assert
 (let ((?x117 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x57 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x61 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x57))))
 (let ((?x62 ((_ to_fp 8 24) ?x61)))
 (fp.leq ?x62 ?x117))))))
(assert
 (let ((?x114 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x88 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x92 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x88))))
 (let ((?x93 ((_ to_fp 8 24) ?x92)))
 (fp.geq ?x93 ?x114))))))
(assert
 (let ((?x117 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x88 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x92 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x88))))
 (let ((?x93 ((_ to_fp 8 24) ?x92)))
 (fp.leq ?x93 ?x117))))))
(assert
 (let ((?x122 (concat (select symbolic_0_float_77 (_ bv1 32)) (select symbolic_0_float_77 (_ bv0 32)))))
(let ((?x126 (concat (select symbolic_0_float_77 (_ bv3 32)) (concat (select symbolic_0_float_77 (_ bv2 32)) ?x122))))
(let ((?x127 ((_ to_fp 8 24) ?x126)))
(let ((?x75 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
(let ((?x79 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x75))))
(let ((?x80 ((_ to_fp 8 24) ?x79)))
(let ((?x46 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
(let ((?x50 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x46))))
(let ((?x51 ((_ to_fp 8 24) ?x50)))
(let ((?x12 (concat (select symbolic_0_float_10 (_ bv1 32)) (select symbolic_0_float_10 (_ bv0 32)))))
(let ((?x18 (concat (select symbolic_0_float_10 (_ bv3 32)) (concat (select symbolic_0_float_10 (_ bv2 32)) ?x12))))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(let ((?x20 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x63 (fp.sub roundNearestTiesToEven ?x20 ?x19)))
(let ((?x94 (fp.sub roundNearestTiesToEven ?x63 ?x51)))
(let ((?x107 (concat (select symbolic_0_float_66 (_ bv1 32)) (select symbolic_0_float_66 (_ bv0 32)))))
(let ((?x111 (concat (select symbolic_0_float_66 (_ bv3 32)) (concat (select symbolic_0_float_66 (_ bv2 32)) ?x107))))
(let ((?x112 ((_ to_fp 8 24) ?x111)))
(let ((?x131 (fp.sub roundNearestTiesToEven ?x112 (fp.add roundNearestTiesToEven ?x94 ?x80))))
(let (($x152 (and (and (not (fp.isNaN ?x131)) (not (fp.isNaN ?x127))) (not (fp.lt ?x131 ?x127)))))
(not $x152))))))))))))))))))))))
(check-sat)
(exit)
