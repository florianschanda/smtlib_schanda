(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.676.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_40 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_52 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_21 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_73 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_64 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_85 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_96 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_38 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float7 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_19 () (Array (_ BitVec 32) (_ BitVec 8)))
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
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (fp.geq ?x66 ?x67))))))
(assert
 (let ((?x70 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (fp.leq ?x66 ?x70))))))
(assert
 (let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x72 (fp.sub roundNearestTiesToEven ?x39 ?x66)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x77 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x81 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x77))))
 (let ((?x82 ((_ to_fp 8 24) ?x81)))
 (let ((?x83 (fp.sub roundNearestTiesToEven ?x82 ?x19)))
 (or (fp.isNaN ?x72) (fp.gt ?x83 ?x72)))))))))))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x77 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x81 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x77))))
 (let ((?x82 ((_ to_fp 8 24) ?x81)))
 (let ((?x83 (fp.sub roundNearestTiesToEven ?x82 ?x19)))
 (not (fp.isNaN ?x83))))))))))
(assert
 (let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (not (fp.isNaN ?x66))))))
(assert
 (let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x77 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x81 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x77))))
 (let ((?x82 ((_ to_fp 8 24) ?x81)))
 (let ((?x83 (fp.sub roundNearestTiesToEven ?x82 ?x19)))
 (not (fp.lt ?x83 ?x66)))))))))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x95 (concat (select symbolic_0_float_85 (_ bv1 32)) (select symbolic_0_float_85 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_85 (_ bv3 32)) (concat (select symbolic_0_float_85 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (fp.geq ?x100 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x95 (concat (select symbolic_0_float_85 (_ bv1 32)) (select symbolic_0_float_85 (_ bv0 32)))))
 (let ((?x99 (concat (select symbolic_0_float_85 (_ bv3 32)) (concat (select symbolic_0_float_85 (_ bv2 32)) ?x95))))
 (let ((?x100 ((_ to_fp 8 24) ?x99)))
 (fp.leq ?x100 ?x24))))))
(assert
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x106 (concat (select symbolic_0_float_96 (_ bv1 32)) (select symbolic_0_float_96 (_ bv0 32)))))
 (let ((?x110 (concat (select symbolic_0_float_96 (_ bv3 32)) (concat (select symbolic_0_float_96 (_ bv2 32)) ?x106))))
 (let ((?x111 ((_ to_fp 8 24) ?x110)))
 (fp.geq ?x111 ?x67))))))
(assert
 (let ((?x70 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x106 (concat (select symbolic_0_float_96 (_ bv1 32)) (select symbolic_0_float_96 (_ bv0 32)))))
 (let ((?x110 (concat (select symbolic_0_float_96 (_ bv3 32)) (concat (select symbolic_0_float_96 (_ bv2 32)) ?x106))))
 (let ((?x111 ((_ to_fp 8 24) ?x110)))
 (fp.leq ?x111 ?x70))))))
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
 (let ((?x130 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x134 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x130))))
 (let ((?x135 ((_ to_fp 8 24) ?x134)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x136 (fp.sub roundNearestTiesToEven ?x39 ?x135)))
 (let ((?x119 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x123 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x119))))
 (let ((?x124 ((_ to_fp 8 24) ?x123)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x125 (fp.sub roundNearestTiesToEven ?x34 ?x124)))
 (or (or (fp.isNaN ?x125) (fp.isNaN ?x136)) (fp.gt ?x125 ?x136)))))))))))))))
(assert
 (let ((?x130 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x134 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x130))))
 (let ((?x135 ((_ to_fp 8 24) ?x134)))
 (let ((?x119 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x123 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x119))))
 (let ((?x124 ((_ to_fp 8 24) ?x123)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x125 (fp.sub roundNearestTiesToEven ?x34 ?x124)))
 (or (or (fp.isNaN ?x125) (fp.isNaN ?x135)) (fp.lt ?x125 ?x135)))))))))))))
(assert
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x43 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (fp.geq ?x48 ?x67))))))
(assert
 (let ((?x70 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x43 (concat (select symbolic_0_float_52 (_ bv1 32)) (select symbolic_0_float_52 (_ bv0 32)))))
 (let ((?x47 (concat (select symbolic_0_float_52 (_ bv3 32)) (concat (select symbolic_0_float_52 (_ bv2 32)) ?x43))))
 (let ((?x48 ((_ to_fp 8 24) ?x47)))
 (fp.leq ?x48 ?x70))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x77 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x81 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x77))))
 (let ((?x82 ((_ to_fp 8 24) ?x81)))
 (fp.geq ?x82 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x77 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x81 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x77))))
 (let ((?x82 ((_ to_fp 8 24) ?x81)))
 (fp.leq ?x82 ?x24))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x119 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x123 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x119))))
 (let ((?x124 ((_ to_fp 8 24) ?x123)))
 (fp.geq ?x124 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x119 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x123 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x119))))
 (let ((?x124 ((_ to_fp 8 24) ?x123)))
 (fp.leq ?x124 ?x24))))))
(assert
 (let ((?x156 (concat (select symbolic_0_float_19 (_ bv1 32)) (select symbolic_0_float_19 (_ bv0 32)))))
 (let ((?x160 (concat (select symbolic_0_float_19 (_ bv3 32)) (concat (select symbolic_0_float_19 (_ bv2 32)) ?x156))))
 (let ((?x161 ((_ to_fp 8 24) ?x160)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x162 (fp.sub roundNearestTiesToEven ?x39 ?x161)))
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x119 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x123 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x119))))
 (let ((?x124 ((_ to_fp 8 24) ?x123)))
 (let ((?x151 (fp.sub roundNearestTiesToEven ?x124 ?x67)))
 (or (or (fp.isNaN ?x151) (fp.isNaN ?x162)) (fp.gt ?x151 ?x162)))))))))))))
(assert
 (let ((?x156 (concat (select symbolic_0_float_19 (_ bv1 32)) (select symbolic_0_float_19 (_ bv0 32)))))
 (let ((?x160 (concat (select symbolic_0_float_19 (_ bv3 32)) (concat (select symbolic_0_float_19 (_ bv2 32)) ?x156))))
 (let ((?x161 ((_ to_fp 8 24) ?x160)))
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x119 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x123 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x119))))
 (let ((?x124 ((_ to_fp 8 24) ?x123)))
 (let ((?x151 (fp.sub roundNearestTiesToEven ?x124 ?x67)))
 (or (or (fp.isNaN ?x151) (fp.isNaN ?x161)) (fp.lt ?x151 ?x161)))))))))))
(assert
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x130 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x134 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x130))))
 (let ((?x135 ((_ to_fp 8 24) ?x134)))
 (fp.geq ?x135 ?x67))))))
(assert
 (let ((?x70 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x130 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x134 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x130))))
 (let ((?x135 ((_ to_fp 8 24) ?x134)))
 (fp.leq ?x135 ?x70))))))
(assert
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x156 (concat (select symbolic_0_float_19 (_ bv1 32)) (select symbolic_0_float_19 (_ bv0 32)))))
 (let ((?x160 (concat (select symbolic_0_float_19 (_ bv3 32)) (concat (select symbolic_0_float_19 (_ bv2 32)) ?x156))))
 (let ((?x161 ((_ to_fp 8 24) ?x160)))
 (fp.geq ?x161 ?x67))))))
(assert
 (let ((?x70 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x156 (concat (select symbolic_0_float_19 (_ bv1 32)) (select symbolic_0_float_19 (_ bv0 32)))))
 (let ((?x160 (concat (select symbolic_0_float_19 (_ bv3 32)) (concat (select symbolic_0_float_19 (_ bv2 32)) ?x156))))
 (let ((?x161 ((_ to_fp 8 24) ?x160)))
 (fp.leq ?x161 ?x70))))))
(assert
 (let ((?x106 (concat (select symbolic_0_float_96 (_ bv1 32)) (select symbolic_0_float_96 (_ bv0 32)))))
(let ((?x110 (concat (select symbolic_0_float_96 (_ bv3 32)) (concat (select symbolic_0_float_96 (_ bv2 32)) ?x106))))
(let ((?x111 ((_ to_fp 8 24) ?x110)))
(let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
(let ((?x178 (fp.sub roundNearestTiesToEven ?x39 ?x111)))
(let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
(let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
(let ((?x66 ((_ to_fp 8 24) ?x65)))
(let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
(let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(let ((?x95 (concat (select symbolic_0_float_85 (_ bv1 32)) (select symbolic_0_float_85 (_ bv0 32)))))
(let ((?x99 (concat (select symbolic_0_float_85 (_ bv3 32)) (concat (select symbolic_0_float_85 (_ bv2 32)) ?x95))))
(let ((?x100 ((_ to_fp 8 24) ?x99)))
(let ((?x176 (fp.sub roundNearestTiesToEven ?x100 (fp.add roundNearestTiesToEven ?x19 ?x66))))
(not (or (or (fp.isNaN ?x176) (fp.isNaN ?x178)) (fp.gt ?x176 ?x178)))))))))))))))))))
(check-sat)
(exit)
