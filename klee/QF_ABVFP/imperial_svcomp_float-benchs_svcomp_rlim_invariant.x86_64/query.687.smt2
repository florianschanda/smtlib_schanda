(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.687.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float_80 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_92 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_61 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_74 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_43 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_56 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_25 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_38 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_17 () (Array (_ BitVec 32) (_ BitVec 8)))
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
 (let ((?x43 (concat (select symbolic_0_float_92 (_ bv1 32)) (select symbolic_0_float_92 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_92 (_ bv3 32)) (concat (select symbolic_0_float_92 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x49 (fp.sub roundNearestTiesToEven ?x39 ?x48)))
 (let ((?x29 (concat (select symbolic_0_float_61 (_ bv1 32)) (select symbolic_0_float_61 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_61 (_ bv3 32)) (concat (select symbolic_0_float_61 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x12 (concat (select symbolic_0_float_80 (_ bv1 32)) (select symbolic_0_float_80 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_80 (_ bv3 32)) (concat (select symbolic_0_float_80 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x19 ?x34)))
 (or (or (fp.isNaN ?x36) (fp.isNaN ?x49)) (fp.gt ?x36 ?x49)))))))))))))))
(assert
 (let ((?x43 (concat (select symbolic_0_float_92 (_ bv1 32)) (select symbolic_0_float_92 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_92 (_ bv3 32)) (concat (select symbolic_0_float_92 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (let ((?x29 (concat (select symbolic_0_float_61 (_ bv1 32)) (select symbolic_0_float_61 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_61 (_ bv3 32)) (concat (select symbolic_0_float_61 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x12 (concat (select symbolic_0_float_80 (_ bv1 32)) (select symbolic_0_float_80 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_80 (_ bv3 32)) (concat (select symbolic_0_float_80 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x19 ?x34)))
 (or (or (fp.isNaN ?x36) (fp.isNaN ?x48)) (fp.lt ?x36 ?x48)))))))))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x29 (concat (select symbolic_0_float_61 (_ bv1 32)) (select symbolic_0_float_61 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_61 (_ bv3 32)) (concat (select symbolic_0_float_61 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (fp.geq ?x34 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x29 (concat (select symbolic_0_float_61 (_ bv1 32)) (select symbolic_0_float_61 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_61 (_ bv3 32)) (concat (select symbolic_0_float_61 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (fp.leq ?x34 ?x24))))))
(assert
 (let ((?x74 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x78 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x74))))
 (let ((?x79 ((_ to_fp 8 24) ?x78)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x80 (fp.sub roundNearestTiesToEven ?x39 ?x79)))
 (let ((?x63 (concat (select symbolic_0_float_43 (_ bv1 32)) (select symbolic_0_float_43 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_43 (_ bv3 32)) (concat (select symbolic_0_float_43 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (let ((?x29 (concat (select symbolic_0_float_61 (_ bv1 32)) (select symbolic_0_float_61 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_61 (_ bv3 32)) (concat (select symbolic_0_float_61 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x69 (fp.sub roundNearestTiesToEven ?x34 ?x68)))
 (or (or (fp.isNaN ?x69) (fp.isNaN ?x80)) (fp.gt ?x69 ?x80)))))))))))))))
(assert
 (let ((?x74 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x78 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x74))))
 (let ((?x79 ((_ to_fp 8 24) ?x78)))
 (let ((?x63 (concat (select symbolic_0_float_43 (_ bv1 32)) (select symbolic_0_float_43 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_43 (_ bv3 32)) (concat (select symbolic_0_float_43 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (let ((?x29 (concat (select symbolic_0_float_61 (_ bv1 32)) (select symbolic_0_float_61 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_61 (_ bv3 32)) (concat (select symbolic_0_float_61 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x69 (fp.sub roundNearestTiesToEven ?x34 ?x68)))
 (or (or (fp.isNaN ?x69) (fp.isNaN ?x79)) (fp.lt ?x69 ?x79)))))))))))))
(assert
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (concat (select symbolic_0_float_92 (_ bv1 32)) (select symbolic_0_float_92 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_92 (_ bv3 32)) (concat (select symbolic_0_float_92 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (fp.geq ?x48 ?x89))))))
(assert
 (let ((?x92 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x43 (concat (select symbolic_0_float_92 (_ bv1 32)) (select symbolic_0_float_92 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_92 (_ bv3 32)) (concat (select symbolic_0_float_92 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (fp.leq ?x48 ?x92))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x63 (concat (select symbolic_0_float_43 (_ bv1 32)) (select symbolic_0_float_43 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_43 (_ bv3 32)) (concat (select symbolic_0_float_43 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (fp.geq ?x68 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x63 (concat (select symbolic_0_float_43 (_ bv1 32)) (select symbolic_0_float_43 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_43 (_ bv3 32)) (concat (select symbolic_0_float_43 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (fp.leq ?x68 ?x24))))))
(assert
 (let ((?x110 (concat (select symbolic_0_float_56 (_ bv1 32)) (select symbolic_0_float_56 (_ bv0 32)))))
 (let ((?x114 (concat (select symbolic_0_float_56 (_ bv3 32)) (concat (select symbolic_0_float_56 (_ bv2 32)) ?x110))))
 (let ((?x115 ((_ to_fp 8 24) ?x114)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x116 (fp.sub roundNearestTiesToEven ?x39 ?x115)))
 (let ((?x99 (concat (select symbolic_0_float_25 (_ bv1 32)) (select symbolic_0_float_25 (_ bv0 32)))))
 (let ((?x103 (concat (select symbolic_0_float_25 (_ bv3 32)) (concat (select symbolic_0_float_25 (_ bv2 32)) ?x99))))
 (let ((?x104 ((_ to_fp 8 24) ?x103)))
 (let ((?x63 (concat (select symbolic_0_float_43 (_ bv1 32)) (select symbolic_0_float_43 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_43 (_ bv3 32)) (concat (select symbolic_0_float_43 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (let ((?x105 (fp.sub roundNearestTiesToEven ?x68 ?x104)))
 (or (or (fp.isNaN ?x105) (fp.isNaN ?x116)) (fp.gt ?x105 ?x116)))))))))))))))
(assert
 (let ((?x110 (concat (select symbolic_0_float_56 (_ bv1 32)) (select symbolic_0_float_56 (_ bv0 32)))))
 (let ((?x114 (concat (select symbolic_0_float_56 (_ bv3 32)) (concat (select symbolic_0_float_56 (_ bv2 32)) ?x110))))
 (let ((?x115 ((_ to_fp 8 24) ?x114)))
 (let ((?x99 (concat (select symbolic_0_float_25 (_ bv1 32)) (select symbolic_0_float_25 (_ bv0 32)))))
 (let ((?x103 (concat (select symbolic_0_float_25 (_ bv3 32)) (concat (select symbolic_0_float_25 (_ bv2 32)) ?x99))))
 (let ((?x104 ((_ to_fp 8 24) ?x103)))
 (let ((?x63 (concat (select symbolic_0_float_43 (_ bv1 32)) (select symbolic_0_float_43 (_ bv0 32)))))
 (let ((?x67 (concat (select symbolic_0_float_43 (_ bv3 32)) (concat (select symbolic_0_float_43 (_ bv2 32)) ?x63))))
 (let ((?x68 ((_ to_fp 8 24) ?x67)))
 (let ((?x105 (fp.sub roundNearestTiesToEven ?x68 ?x104)))
 (or (or (fp.isNaN ?x105) (fp.isNaN ?x115)) (fp.lt ?x105 ?x115)))))))))))))
(assert
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x74 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x78 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x74))))
 (let ((?x79 ((_ to_fp 8 24) ?x78)))
 (fp.geq ?x79 ?x89))))))
(assert
 (let ((?x92 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x74 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x78 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x74))))
 (let ((?x79 ((_ to_fp 8 24) ?x78)))
 (fp.leq ?x79 ?x92))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x99 (concat (select symbolic_0_float_25 (_ bv1 32)) (select symbolic_0_float_25 (_ bv0 32)))))
 (let ((?x103 (concat (select symbolic_0_float_25 (_ bv3 32)) (concat (select symbolic_0_float_25 (_ bv2 32)) ?x99))))
 (let ((?x104 ((_ to_fp 8 24) ?x103)))
 (fp.geq ?x104 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x99 (concat (select symbolic_0_float_25 (_ bv1 32)) (select symbolic_0_float_25 (_ bv0 32)))))
 (let ((?x103 (concat (select symbolic_0_float_25 (_ bv3 32)) (concat (select symbolic_0_float_25 (_ bv2 32)) ?x99))))
 (let ((?x104 ((_ to_fp 8 24) ?x103)))
 (fp.leq ?x104 ?x24))))))
(assert
 (let ((?x144 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x148 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x144))))
 (let ((?x149 ((_ to_fp 8 24) ?x148)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x150 (fp.sub roundNearestTiesToEven ?x39 ?x149)))
 (let ((?x132 (concat (select symbolic_0_float_17 (_ bv1 32)) (select symbolic_0_float_17 (_ bv0 32)))))
 (let ((?x136 (concat (select symbolic_0_float_17 (_ bv3 32)) (concat (select symbolic_0_float_17 (_ bv2 32)) ?x132))))
 (let ((?x137 ((_ to_fp 8 24) ?x136)))
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x99 (concat (select symbolic_0_float_25 (_ bv1 32)) (select symbolic_0_float_25 (_ bv0 32)))))
 (let ((?x103 (concat (select symbolic_0_float_25 (_ bv3 32)) (concat (select symbolic_0_float_25 (_ bv2 32)) ?x99))))
 (let ((?x104 ((_ to_fp 8 24) ?x103)))
 (let ((?x139 (fp.sub roundNearestTiesToEven ?x104 (fp.add roundNearestTiesToEven ?x89 ?x137))))
 (or (or (fp.isNaN ?x139) (fp.isNaN ?x150)) (fp.gt ?x139 ?x150))))))))))))))))
(assert
 (let ((?x144 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x148 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x144))))
 (let ((?x149 ((_ to_fp 8 24) ?x148)))
 (let ((?x132 (concat (select symbolic_0_float_17 (_ bv1 32)) (select symbolic_0_float_17 (_ bv0 32)))))
 (let ((?x136 (concat (select symbolic_0_float_17 (_ bv3 32)) (concat (select symbolic_0_float_17 (_ bv2 32)) ?x132))))
 (let ((?x137 ((_ to_fp 8 24) ?x136)))
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x99 (concat (select symbolic_0_float_25 (_ bv1 32)) (select symbolic_0_float_25 (_ bv0 32)))))
 (let ((?x103 (concat (select symbolic_0_float_25 (_ bv3 32)) (concat (select symbolic_0_float_25 (_ bv2 32)) ?x99))))
 (let ((?x104 ((_ to_fp 8 24) ?x103)))
 (let ((?x139 (fp.sub roundNearestTiesToEven ?x104 (fp.add roundNearestTiesToEven ?x89 ?x137))))
 (or (or (fp.isNaN ?x139) (fp.isNaN ?x149)) (fp.lt ?x139 ?x149))))))))))))))
(assert
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x110 (concat (select symbolic_0_float_56 (_ bv1 32)) (select symbolic_0_float_56 (_ bv0 32)))))
 (let ((?x114 (concat (select symbolic_0_float_56 (_ bv3 32)) (concat (select symbolic_0_float_56 (_ bv2 32)) ?x110))))
 (let ((?x115 ((_ to_fp 8 24) ?x114)))
 (fp.geq ?x115 ?x89))))))
(assert
 (let ((?x92 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x110 (concat (select symbolic_0_float_56 (_ bv1 32)) (select symbolic_0_float_56 (_ bv0 32)))))
 (let ((?x114 (concat (select symbolic_0_float_56 (_ bv3 32)) (concat (select symbolic_0_float_56 (_ bv2 32)) ?x110))))
 (let ((?x115 ((_ to_fp 8 24) ?x114)))
 (fp.leq ?x115 ?x92))))))
(assert
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x132 (concat (select symbolic_0_float_17 (_ bv1 32)) (select symbolic_0_float_17 (_ bv0 32)))))
 (let ((?x136 (concat (select symbolic_0_float_17 (_ bv3 32)) (concat (select symbolic_0_float_17 (_ bv2 32)) ?x132))))
 (let ((?x137 ((_ to_fp 8 24) ?x136)))
 (fp.geq ?x137 ?x89))))))
(assert
 (let ((?x92 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x132 (concat (select symbolic_0_float_17 (_ bv1 32)) (select symbolic_0_float_17 (_ bv0 32)))))
 (let ((?x136 (concat (select symbolic_0_float_17 (_ bv3 32)) (concat (select symbolic_0_float_17 (_ bv2 32)) ?x132))))
 (let ((?x137 ((_ to_fp 8 24) ?x136)))
 (fp.leq ?x137 ?x92))))))
(assert
 (let ((?x132 (concat (select symbolic_0_float_17 (_ bv1 32)) (select symbolic_0_float_17 (_ bv0 32)))))
 (let ((?x136 (concat (select symbolic_0_float_17 (_ bv3 32)) (concat (select symbolic_0_float_17 (_ bv2 32)) ?x132))))
 (let ((?x137 ((_ to_fp 8 24) ?x136)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x163 (fp.sub roundNearestTiesToEven ?x39 ?x137)))
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x168 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x172 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x168))))
 (let ((?x173 ((_ to_fp 8 24) ?x172)))
 (let ((?x174 (fp.sub roundNearestTiesToEven ?x173 ?x89)))
 (or (fp.isNaN ?x163) (fp.gt ?x174 ?x163)))))))))))))
(assert
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x168 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x172 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x168))))
 (let ((?x173 ((_ to_fp 8 24) ?x172)))
 (let ((?x174 (fp.sub roundNearestTiesToEven ?x173 ?x89)))
 (not (fp.isNaN ?x174))))))))
(assert
 (let ((?x132 (concat (select symbolic_0_float_17 (_ bv1 32)) (select symbolic_0_float_17 (_ bv0 32)))))
 (let ((?x136 (concat (select symbolic_0_float_17 (_ bv3 32)) (concat (select symbolic_0_float_17 (_ bv2 32)) ?x132))))
 (let ((?x137 ((_ to_fp 8 24) ?x136)))
 (not (fp.isNaN ?x137))))))
(assert
 (let ((?x132 (concat (select symbolic_0_float_17 (_ bv1 32)) (select symbolic_0_float_17 (_ bv0 32)))))
 (let ((?x136 (concat (select symbolic_0_float_17 (_ bv3 32)) (concat (select symbolic_0_float_17 (_ bv2 32)) ?x132))))
 (let ((?x137 ((_ to_fp 8 24) ?x136)))
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x168 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x172 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x168))))
 (let ((?x173 ((_ to_fp 8 24) ?x172)))
 (let ((?x174 (fp.sub roundNearestTiesToEven ?x173 ?x89)))
 (not (fp.lt ?x174 ?x137)))))))))))
(assert
 (let ((?x89 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x144 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x148 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x144))))
 (let ((?x149 ((_ to_fp 8 24) ?x148)))
 (fp.geq ?x149 ?x89))))))
(assert
 (let ((?x92 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x144 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x148 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x144))))
 (let ((?x149 ((_ to_fp 8 24) ?x148)))
 (fp.leq ?x149 ?x92))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x168 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x172 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x168))))
 (let ((?x173 ((_ to_fp 8 24) ?x172)))
 (fp.geq ?x173 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x168 (concat (select symbolic_0_float9 (_ bv1 32)) (select symbolic_0_float9 (_ bv0 32)))))
 (let ((?x172 (concat (select symbolic_0_float9 (_ bv3 32)) (concat (select symbolic_0_float9 (_ bv2 32)) ?x168))))
 (let ((?x173 ((_ to_fp 8 24) ?x172)))
 (fp.leq ?x173 ?x24))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float_80 (_ bv1 32)) (select symbolic_0_float_80 (_ bv0 32)))))
(let ((?x18 (concat (select symbolic_0_float_80 (_ bv3 32)) (concat (select symbolic_0_float_80 (_ bv2 32)) ?x12))))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(not (and (fp.geq ?x19 ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ?x19 ((_ to_fp 8 24) (_ bv1124139008 32)))))))))
(check-sat)
(exit)
