(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.355.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_80 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_94 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_73 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_52 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_21 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_36 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_15 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_47 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_68 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float9 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x12 (concat (select symbolic_0_float_80 (_ bv1 32)) (select symbolic_0_float_80 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_80 (_ bv3 32)) (concat (select symbolic_0_float_80 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.geq ?x19 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x12 (concat (select symbolic_0_float_80 (_ bv1 32)) (select symbolic_0_float_80 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_80 (_ bv3 32)) (concat (select symbolic_0_float_80 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.leq ?x19 ?x24))))))
(assert
 (let ((?x63 (concat (select symbolic_0_float_94 (_ bv1 32)) (select symbolic_0_float_94 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_94 (_ bv3 32)) (concat (select symbolic_0_float_94 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (let ((?x59 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x69 (fp.sub roundNearestTiesToEven ?x59 ?x68)))
 (let ((?x49 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x53 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x49))))
 (let ((?x54 ((_ to_fp 8 24) ?x53)))
 (let ((?x38 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x42 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x38))))
 (let ((?x43 ((_ to_fp 8 24) ?x42)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x45 (fp.sub roundNearestTiesToEven ?x34 ?x43)))
 (let ((?x12 (concat (select symbolic_0_float_80 (_ bv1 32)) (select symbolic_0_float_80 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_80 (_ bv3 32)) (concat (select symbolic_0_float_80 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x56 (fp.sub roundNearestTiesToEven ?x19 (fp.sub roundNearestTiesToEven ?x45 ?x54))))
 (or (or (fp.isNaN ?x56) (fp.isNaN ?x69)) (fp.gt ?x56 ?x69))))))))))))))))))))))
(assert
 (let ((?x63 (concat (select symbolic_0_float_94 (_ bv1 32)) (select symbolic_0_float_94 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_94 (_ bv3 32)) (concat (select symbolic_0_float_94 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (let ((?x49 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x53 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x49))))
 (let ((?x54 ((_ to_fp 8 24) ?x53)))
 (let ((?x38 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x42 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x38))))
 (let ((?x43 ((_ to_fp 8 24) ?x42)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x45 (fp.sub roundNearestTiesToEven ?x34 ?x43)))
 (let ((?x12 (concat (select symbolic_0_float_80 (_ bv1 32)) (select symbolic_0_float_80 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_80 (_ bv3 32)) (concat (select symbolic_0_float_80 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x56 (fp.sub roundNearestTiesToEven ?x19 (fp.sub roundNearestTiesToEven ?x45 ?x54))))
 (or (or (fp.isNaN ?x56) (fp.isNaN ?x68)) (fp.lt ?x56 ?x68))))))))))))))))))))
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
 (let ((?x96 (concat (select symbolic_0_float_36 (_ bv1 32)) (select symbolic_0_float_36 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_36 (_ bv3 32)) (concat (select symbolic_0_float_36 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (let ((?x59 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x102 (fp.sub roundNearestTiesToEven ?x59 ?x101)))
 (let ((?x84 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x88 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x84))))
 (let ((?x89 ((_ to_fp 8 24) ?x88)))
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x91 (fp.sub roundNearestTiesToEven ?x34 (fp.sub roundNearestTiesToEven ?x80 ?x89))))
 (or (or (fp.isNaN ?x91) (fp.isNaN ?x102)) (fp.gt ?x91 ?x102))))))))))))))))
(assert
 (let ((?x96 (concat (select symbolic_0_float_36 (_ bv1 32)) (select symbolic_0_float_36 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_36 (_ bv3 32)) (concat (select symbolic_0_float_36 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (let ((?x84 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x88 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x84))))
 (let ((?x89 ((_ to_fp 8 24) ?x88)))
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x91 (fp.sub roundNearestTiesToEven ?x34 (fp.sub roundNearestTiesToEven ?x80 ?x89))))
 (or (or (fp.isNaN ?x91) (fp.isNaN ?x101)) (fp.lt ?x91 ?x101))))))))))))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x38 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x42 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x38))))
 (let ((?x43 ((_ to_fp 8 24) ?x42)))
 (fp.geq ?x43 ?x80))))))
(assert
 (let ((?x113 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x38 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x42 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x38))))
 (let ((?x43 ((_ to_fp 8 24) ?x42)))
 (fp.leq ?x43 ?x113))))))
(assert
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x118 (concat (select symbolic_0_float_47 (_ bv1 32)) (select symbolic_0_float_47 (_ bv0 32)))))
 (let ((?x122 (concat (select symbolic_0_float_47 (_ bv3 32)) (concat (select symbolic_0_float_47 (_ bv2 32)) ?x118))))
 (let ((?x123 ((_ to_fp 8 24) ?x122)))
 (let ((?x124 (fp.sub roundNearestTiesToEven ?x123 ?x34)))
 (not (fp.isNaN ?x124))))))))))
(assert
 (let ((?x38 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x42 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x38))))
 (let ((?x43 ((_ to_fp 8 24) ?x42)))
 (let ((?x59 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x127 (fp.sub roundNearestTiesToEven ?x59 ?x43)))
 (not (fp.isNaN ?x127))))))))
(assert
 (let ((?x38 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x42 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x38))))
 (let ((?x43 ((_ to_fp 8 24) ?x42)))
 (let ((?x59 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x127 (fp.sub roundNearestTiesToEven ?x59 ?x43)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x118 (concat (select symbolic_0_float_47 (_ bv1 32)) (select symbolic_0_float_47 (_ bv0 32)))))
 (let ((?x122 (concat (select symbolic_0_float_47 (_ bv3 32)) (concat (select symbolic_0_float_47 (_ bv2 32)) ?x118))))
 (let ((?x123 ((_ to_fp 8 24) ?x122)))
 (let ((?x124 (fp.sub roundNearestTiesToEven ?x123 ?x34)))
 (not (fp.gt ?x124 ?x127)))))))))))))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x49 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x53 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x49))))
 (let ((?x54 ((_ to_fp 8 24) ?x53)))
 (fp.geq ?x54 ?x80))))))
(assert
 (let ((?x113 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x49 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x53 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x49))))
 (let ((?x54 ((_ to_fp 8 24) ?x53)))
 (fp.leq ?x54 ?x113))))))
(assert
 (let ((?x38 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x42 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x38))))
 (let ((?x43 ((_ to_fp 8 24) ?x42)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x45 (fp.sub roundNearestTiesToEven ?x34 ?x43)))
 (let ((?x137 (concat (select symbolic_0_float_68 (_ bv1 32)) (select symbolic_0_float_68 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float_68 (_ bv3 32)) (concat (select symbolic_0_float_68 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (let ((?x143 (fp.sub roundNearestTiesToEven ?x142 ?x45)))
 (not (fp.isNaN ?x143))))))))))))))
(assert
 (let ((?x49 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x53 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x49))))
 (let ((?x54 ((_ to_fp 8 24) ?x53)))
 (let ((?x59 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x146 (fp.sub roundNearestTiesToEven ?x59 ?x54)))
 (not (fp.isNaN ?x146))))))))
(assert
 (let ((?x49 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x53 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x49))))
 (let ((?x54 ((_ to_fp 8 24) ?x53)))
 (let ((?x59 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x146 (fp.sub roundNearestTiesToEven ?x59 ?x54)))
 (let ((?x38 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x42 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x38))))
 (let ((?x43 ((_ to_fp 8 24) ?x42)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x45 (fp.sub roundNearestTiesToEven ?x34 ?x43)))
 (let ((?x137 (concat (select symbolic_0_float_68 (_ bv1 32)) (select symbolic_0_float_68 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float_68 (_ bv3 32)) (concat (select symbolic_0_float_68 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (let ((?x143 (fp.sub roundNearestTiesToEven ?x142 ?x45)))
 (not (fp.gt ?x143 ?x146)))))))))))))))))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x63 (concat (select symbolic_0_float_94 (_ bv1 32)) (select symbolic_0_float_94 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_94 (_ bv3 32)) (concat (select symbolic_0_float_94 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (fp.geq ?x68 ?x80))))))
(assert
 (let ((?x113 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x63 (concat (select symbolic_0_float_94 (_ bv1 32)) (select symbolic_0_float_94 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_94 (_ bv3 32)) (concat (select symbolic_0_float_94 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (fp.leq ?x68 ?x113))))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x84 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x88 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x84))))
 (let ((?x89 ((_ to_fp 8 24) ?x88)))
 (fp.geq ?x89 ?x80))))))
(assert
 (let ((?x113 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x84 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x88 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x84))))
 (let ((?x89 ((_ to_fp 8 24) ?x88)))
 (fp.leq ?x89 ?x113))))))
(assert
 (let ((?x84 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x88 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x84))))
 (let ((?x89 ((_ to_fp 8 24) ?x88)))
 (let ((?x59 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x155 (fp.sub roundNearestTiesToEven ?x59 ?x89)))
 (not (fp.isNaN ?x155))))))))
(assert
 (let ((?x84 (concat (select symbolic_0_float_15 (_ bv1 32)) (select symbolic_0_float_15 (_ bv0 32)))))
 (let ((?x88 (concat (select symbolic_0_float_15 (_ bv3 32)) (concat (select symbolic_0_float_15 (_ bv2 32)) ?x84))))
 (let ((?x89 ((_ to_fp 8 24) ?x88)))
 (let ((?x59 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x155 (fp.sub roundNearestTiesToEven ?x59 ?x89)))
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x161 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x165 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x161))))
 (let ((?x166 ((_ to_fp 8 24) ?x165)))
 (let ((?x167 (fp.sub roundNearestTiesToEven ?x166 ?x80)))
 (not (fp.gt ?x167 ?x155)))))))))))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x96 (concat (select symbolic_0_float_36 (_ bv1 32)) (select symbolic_0_float_36 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_36 (_ bv3 32)) (concat (select symbolic_0_float_36 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (fp.geq ?x101 ?x80))))))
(assert
 (let ((?x113 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x96 (concat (select symbolic_0_float_36 (_ bv1 32)) (select symbolic_0_float_36 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_36 (_ bv3 32)) (concat (select symbolic_0_float_36 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (fp.leq ?x101 ?x113))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x118 (concat (select symbolic_0_float_47 (_ bv1 32)) (select symbolic_0_float_47 (_ bv0 32)))))
 (let ((?x122 (concat (select symbolic_0_float_47 (_ bv3 32)) (concat (select symbolic_0_float_47 (_ bv2 32)) ?x118))))
 (let ((?x123 ((_ to_fp 8 24) ?x122)))
 (fp.geq ?x123 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x118 (concat (select symbolic_0_float_47 (_ bv1 32)) (select symbolic_0_float_47 (_ bv0 32)))))
 (let ((?x122 (concat (select symbolic_0_float_47 (_ bv3 32)) (concat (select symbolic_0_float_47 (_ bv2 32)) ?x118))))
 (let ((?x123 ((_ to_fp 8 24) ?x122)))
 (fp.leq ?x123 ?x24))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x137 (concat (select symbolic_0_float_68 (_ bv1 32)) (select symbolic_0_float_68 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float_68 (_ bv3 32)) (concat (select symbolic_0_float_68 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (fp.geq ?x142 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x137 (concat (select symbolic_0_float_68 (_ bv1 32)) (select symbolic_0_float_68 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float_68 (_ bv3 32)) (concat (select symbolic_0_float_68 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (fp.leq ?x142 ?x24))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x161 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x165 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x161))))
 (let ((?x166 ((_ to_fp 8 24) ?x165)))
 (fp.geq ?x166 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x161 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x165 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x161))))
 (let ((?x166 ((_ to_fp 8 24) ?x165)))
 (fp.leq ?x166 ?x24))))))
(assert
 (let ((?x80 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x161 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x165 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x161))))
 (let ((?x166 ((_ to_fp 8 24) ?x165)))
 (let ((?x167 (fp.sub roundNearestTiesToEven ?x166 ?x80)))
 (not (fp.isNaN ?x167))))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float_80 (_ bv1 32)) (select symbolic_0_float_80 (_ bv0 32)))))
(let ((?x18 (concat (select symbolic_0_float_80 (_ bv3 32)) (concat (select symbolic_0_float_80 (_ bv2 32)) ?x12))))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(not (and (fp.geq ?x19 ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ?x19 ((_ to_fp 8 24) (_ bv1124139008 32)))))))))
(check-sat)
(exit)
