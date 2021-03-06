(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.669.smt2
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
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x75 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (let ((?x81 (fp.sub roundNearestTiesToEven ?x80 ?x19)))
 (not (fp.isNaN ?x81))))))))))
(assert
 (let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x84 (fp.sub roundNearestTiesToEven ?x39 ?x66)))
 (not (fp.isNaN ?x84))))))))
(assert
 (let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
 (let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
 (let ((?x66 ((_ to_fp 8 24) ?x65)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x84 (fp.sub roundNearestTiesToEven ?x39 ?x66)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x75 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (let ((?x81 (fp.sub roundNearestTiesToEven ?x80 ?x19)))
 (not (fp.gt ?x81 ?x84)))))))))))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x92 (concat (select symbolic_0_float_85 (_ bv1 32)) (select symbolic_0_float_85 (_ bv0 32)))))
 (let ((?x96 (concat (select symbolic_0_float_85 (_ bv3 32)) (concat (select symbolic_0_float_85 (_ bv2 32)) ?x92))))
 (let ((?x97 ((_ to_fp 8 24) ?x96)))
 (fp.geq ?x97 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x92 (concat (select symbolic_0_float_85 (_ bv1 32)) (select symbolic_0_float_85 (_ bv0 32)))))
 (let ((?x96 (concat (select symbolic_0_float_85 (_ bv3 32)) (concat (select symbolic_0_float_85 (_ bv2 32)) ?x92))))
 (let ((?x97 ((_ to_fp 8 24) ?x96)))
 (fp.leq ?x97 ?x24))))))
(assert
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x103 (concat (select symbolic_0_float_96 (_ bv1 32)) (select symbolic_0_float_96 (_ bv0 32)))))
 (let ((?x107 (concat (select symbolic_0_float_96 (_ bv3 32)) (concat (select symbolic_0_float_96 (_ bv2 32)) ?x103))))
 (let ((?x108 ((_ to_fp 8 24) ?x107)))
 (fp.geq ?x108 ?x67))))))
(assert
 (let ((?x70 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x103 (concat (select symbolic_0_float_96 (_ bv1 32)) (select symbolic_0_float_96 (_ bv0 32)))))
 (let ((?x107 (concat (select symbolic_0_float_96 (_ bv3 32)) (concat (select symbolic_0_float_96 (_ bv2 32)) ?x103))))
 (let ((?x108 ((_ to_fp 8 24) ?x107)))
 (fp.leq ?x108 ?x70))))))
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
 (let ((?x127 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x131 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x127))))
 (let ((?x132 ((_ to_fp 8 24) ?x131)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x133 (fp.sub roundNearestTiesToEven ?x39 ?x132)))
 (let ((?x116 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x120 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x116))))
 (let ((?x121 ((_ to_fp 8 24) ?x120)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x122 (fp.sub roundNearestTiesToEven ?x34 ?x121)))
 (or (or (fp.isNaN ?x122) (fp.isNaN ?x133)) (fp.gt ?x122 ?x133)))))))))))))))
(assert
 (let ((?x127 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x131 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x127))))
 (let ((?x132 ((_ to_fp 8 24) ?x131)))
 (let ((?x116 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x120 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x116))))
 (let ((?x121 ((_ to_fp 8 24) ?x120)))
 (let ((?x29 (concat (select symbolic_0_float_21 (_ bv1 32)) (select symbolic_0_float_21 (_ bv0 32)))))
 (let ((?x33 (concat (select symbolic_0_float_21 (_ bv3 32)) (concat (select symbolic_0_float_21 (_ bv2 32)) ?x29))))
 (let ((?x34 ((_ to_fp 8 24) ?x33)))
 (let ((?x122 (fp.sub roundNearestTiesToEven ?x34 ?x121)))
 (or (or (fp.isNaN ?x122) (fp.isNaN ?x132)) (fp.lt ?x122 ?x132)))))))))))))
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
 (let ((?x75 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (fp.geq ?x80 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x75 (concat (select symbolic_0_float_64 (_ bv1 32)) (select symbolic_0_float_64 (_ bv0 32)))))
 (let ((?x79 (concat (select symbolic_0_float_64 (_ bv3 32)) (concat (select symbolic_0_float_64 (_ bv2 32)) ?x75))))
 (let ((?x80 ((_ to_fp 8 24) ?x79)))
 (fp.leq ?x80 ?x24))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x116 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x120 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x116))))
 (let ((?x121 ((_ to_fp 8 24) ?x120)))
 (fp.geq ?x121 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x116 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x120 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x116))))
 (let ((?x121 ((_ to_fp 8 24) ?x120)))
 (fp.leq ?x121 ?x24))))))
(assert
 (let ((?x153 (concat (select symbolic_0_float_19 (_ bv1 32)) (select symbolic_0_float_19 (_ bv0 32)))))
 (let ((?x157 (concat (select symbolic_0_float_19 (_ bv3 32)) (concat (select symbolic_0_float_19 (_ bv2 32)) ?x153))))
 (let ((?x158 ((_ to_fp 8 24) ?x157)))
 (let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x159 (fp.sub roundNearestTiesToEven ?x39 ?x158)))
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x116 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x120 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x116))))
 (let ((?x121 ((_ to_fp 8 24) ?x120)))
 (let ((?x148 (fp.sub roundNearestTiesToEven ?x121 ?x67)))
 (or (or (fp.isNaN ?x148) (fp.isNaN ?x159)) (fp.gt ?x148 ?x159)))))))))))))
(assert
 (let ((?x153 (concat (select symbolic_0_float_19 (_ bv1 32)) (select symbolic_0_float_19 (_ bv0 32)))))
 (let ((?x157 (concat (select symbolic_0_float_19 (_ bv3 32)) (concat (select symbolic_0_float_19 (_ bv2 32)) ?x153))))
 (let ((?x158 ((_ to_fp 8 24) ?x157)))
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x116 (concat (select symbolic_0_float7 (_ bv1 32)) (select symbolic_0_float7 (_ bv0 32)))))
 (let ((?x120 (concat (select symbolic_0_float7 (_ bv3 32)) (concat (select symbolic_0_float7 (_ bv2 32)) ?x116))))
 (let ((?x121 ((_ to_fp 8 24) ?x120)))
 (let ((?x148 (fp.sub roundNearestTiesToEven ?x121 ?x67)))
 (or (or (fp.isNaN ?x148) (fp.isNaN ?x158)) (fp.lt ?x148 ?x158)))))))))))
(assert
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x127 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x131 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x127))))
 (let ((?x132 ((_ to_fp 8 24) ?x131)))
 (fp.geq ?x132 ?x67))))))
(assert
 (let ((?x70 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x127 (concat (select symbolic_0_float_38 (_ bv1 32)) (select symbolic_0_float_38 (_ bv0 32)))))
 (let ((?x131 (concat (select symbolic_0_float_38 (_ bv3 32)) (concat (select symbolic_0_float_38 (_ bv2 32)) ?x127))))
 (let ((?x132 ((_ to_fp 8 24) ?x131)))
 (fp.leq ?x132 ?x70))))))
(assert
 (let ((?x67 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x153 (concat (select symbolic_0_float_19 (_ bv1 32)) (select symbolic_0_float_19 (_ bv0 32)))))
 (let ((?x157 (concat (select symbolic_0_float_19 (_ bv3 32)) (concat (select symbolic_0_float_19 (_ bv2 32)) ?x153))))
 (let ((?x158 ((_ to_fp 8 24) ?x157)))
 (fp.geq ?x158 ?x67))))))
(assert
 (let ((?x70 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x153 (concat (select symbolic_0_float_19 (_ bv1 32)) (select symbolic_0_float_19 (_ bv0 32)))))
 (let ((?x157 (concat (select symbolic_0_float_19 (_ bv3 32)) (concat (select symbolic_0_float_19 (_ bv2 32)) ?x153))))
 (let ((?x158 ((_ to_fp 8 24) ?x157)))
 (fp.leq ?x158 ?x70))))))
(assert
 (let ((?x103 (concat (select symbolic_0_float_96 (_ bv1 32)) (select symbolic_0_float_96 (_ bv0 32)))))
(let ((?x107 (concat (select symbolic_0_float_96 (_ bv3 32)) (concat (select symbolic_0_float_96 (_ bv2 32)) ?x103))))
(let ((?x108 ((_ to_fp 8 24) ?x107)))
(let ((?x39 ((_ to_fp 8 24) (_ bv2147483648 32))))
(let ((?x176 (fp.sub roundNearestTiesToEven ?x39 ?x108)))
(let ((?x61 (concat (select symbolic_0_float_73 (_ bv1 32)) (select symbolic_0_float_73 (_ bv0 32)))))
(let ((?x65 (concat (select symbolic_0_float_73 (_ bv3 32)) (concat (select symbolic_0_float_73 (_ bv2 32)) ?x61))))
(let ((?x66 ((_ to_fp 8 24) ?x65)))
(let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
(let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(let ((?x92 (concat (select symbolic_0_float_85 (_ bv1 32)) (select symbolic_0_float_85 (_ bv0 32)))))
(let ((?x96 (concat (select symbolic_0_float_85 (_ bv3 32)) (concat (select symbolic_0_float_85 (_ bv2 32)) ?x92))))
(let ((?x97 ((_ to_fp 8 24) ?x96)))
(let ((?x173 (fp.sub roundNearestTiesToEven ?x97 (fp.sub roundNearestTiesToEven ?x19 ?x66))))
(let (($x182 (and (and (not (fp.isNaN ?x173)) (not (fp.isNaN ?x176))) (not (fp.gt ?x173 ?x176)))))
(not $x182))))))))))))))))))
(check-sat)
(exit)
