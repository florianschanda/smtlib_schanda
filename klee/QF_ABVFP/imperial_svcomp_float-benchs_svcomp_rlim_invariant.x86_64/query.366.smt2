(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.366.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_40 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_53 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_32 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_11 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_74 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_65 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_86 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_97 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float8 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_29 () (Array (_ BitVec 32) (_ BitVec 8)))
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
 (let ((?x55 (concat (select symbolic_0_float_53 (_ bv1 32)) (select symbolic_0_float_53 (_ bv0 32)))))
 (let ((?x59 (concat (select symbolic_0_float_53 (_ bv3 32)) (concat (select symbolic_0_float_53 (_ bv2 32)) ?x55))))
 (let ((?x60 ((_ to_fp 8 24) ?x59)))
 (let ((?x51 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x61 (fp.sub roundNearestTiesToEven ?x51 ?x60)))
 (let ((?x41 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x45 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x41))))
 (let ((?x46 ((_ to_fp 8 24) ?x45)))
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x37 (fp.add roundNearestTiesToEven ?x26 ?x35)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x48 (fp.sub roundNearestTiesToEven ?x19 (fp.sub roundNearestTiesToEven ?x37 ?x46))))
 (or (or (fp.isNaN ?x48) (fp.isNaN ?x61)) (fp.gt ?x48 ?x61))))))))))))))))))))
(assert
 (let ((?x55 (concat (select symbolic_0_float_53 (_ bv1 32)) (select symbolic_0_float_53 (_ bv0 32)))))
 (let ((?x59 (concat (select symbolic_0_float_53 (_ bv3 32)) (concat (select symbolic_0_float_53 (_ bv2 32)) ?x55))))
 (let ((?x60 ((_ to_fp 8 24) ?x59)))
 (let ((?x41 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x45 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x41))))
 (let ((?x46 ((_ to_fp 8 24) ?x45)))
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x37 (fp.add roundNearestTiesToEven ?x26 ?x35)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x48 (fp.sub roundNearestTiesToEven ?x19 (fp.sub roundNearestTiesToEven ?x37 ?x46))))
 (or (or (fp.isNaN ?x48) (fp.isNaN ?x60)) (fp.lt ?x48 ?x60))))))))))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x73 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x77 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x73))))
 (let ((?x78 ((_ to_fp 8 24) ?x77)))
 (fp.geq ?x78 ?x26))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x73 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x77 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x73))))
 (let ((?x78 ((_ to_fp 8 24) ?x77)))
 (fp.leq ?x78 ?x81))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x86 (concat (select symbolic_0_float_65 (_ bv1 32)) (select symbolic_0_float_65 (_ bv0 32)))))
 (let ((?x90 (concat (select symbolic_0_float_65 (_ bv3 32)) (concat (select symbolic_0_float_65 (_ bv2 32)) ?x86))))
 (let ((?x91 ((_ to_fp 8 24) ?x90)))
 (let ((?x92 (fp.sub roundNearestTiesToEven ?x91 ?x19)))
 (not (fp.isNaN ?x92))))))))))
(assert
 (let ((?x73 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x77 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x73))))
 (let ((?x78 ((_ to_fp 8 24) ?x77)))
 (let ((?x51 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x95 (fp.sub roundNearestTiesToEven ?x51 ?x78)))
 (not (fp.isNaN ?x95))))))))
(assert
 (let ((?x73 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x77 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x73))))
 (let ((?x78 ((_ to_fp 8 24) ?x77)))
 (let ((?x51 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x95 (fp.sub roundNearestTiesToEven ?x51 ?x78)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x86 (concat (select symbolic_0_float_65 (_ bv1 32)) (select symbolic_0_float_65 (_ bv0 32)))))
 (let ((?x90 (concat (select symbolic_0_float_65 (_ bv3 32)) (concat (select symbolic_0_float_65 (_ bv2 32)) ?x86))))
 (let ((?x91 ((_ to_fp 8 24) ?x90)))
 (let ((?x92 (fp.sub roundNearestTiesToEven ?x91 ?x19)))
 (not (fp.gt ?x92 ?x95)))))))))))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x103 (concat (select symbolic_0_float_86 (_ bv1 32)) (select symbolic_0_float_86 (_ bv0 32)))))
 (let ((?x107 (concat (select symbolic_0_float_86 (_ bv3 32)) (concat (select symbolic_0_float_86 (_ bv2 32)) ?x103))))
 (let ((?x108 ((_ to_fp 8 24) ?x107)))
 (fp.geq ?x108 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x103 (concat (select symbolic_0_float_86 (_ bv1 32)) (select symbolic_0_float_86 (_ bv0 32)))))
 (let ((?x107 (concat (select symbolic_0_float_86 (_ bv3 32)) (concat (select symbolic_0_float_86 (_ bv2 32)) ?x103))))
 (let ((?x108 ((_ to_fp 8 24) ?x107)))
 (fp.leq ?x108 ?x24))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x114 (concat (select symbolic_0_float_97 (_ bv1 32)) (select symbolic_0_float_97 (_ bv0 32)))))
 (let ((?x118 (concat (select symbolic_0_float_97 (_ bv3 32)) (concat (select symbolic_0_float_97 (_ bv2 32)) ?x114))))
 (let ((?x119 ((_ to_fp 8 24) ?x118)))
 (fp.geq ?x119 ?x26))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x114 (concat (select symbolic_0_float_97 (_ bv1 32)) (select symbolic_0_float_97 (_ bv0 32)))))
 (let ((?x118 (concat (select symbolic_0_float_97 (_ bv3 32)) (concat (select symbolic_0_float_97 (_ bv2 32)) ?x114))))
 (let ((?x119 ((_ to_fp 8 24) ?x118)))
 (fp.leq ?x119 ?x81))))))
(assert
 (let ((?x114 (concat (select symbolic_0_float_97 (_ bv1 32)) (select symbolic_0_float_97 (_ bv0 32)))))
 (let ((?x118 (concat (select symbolic_0_float_97 (_ bv3 32)) (concat (select symbolic_0_float_97 (_ bv2 32)) ?x114))))
 (let ((?x119 ((_ to_fp 8 24) ?x118)))
 (let ((?x51 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x125 (fp.sub roundNearestTiesToEven ?x51 ?x119)))
 (let ((?x73 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
 (let ((?x77 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x73))))
 (let ((?x78 ((_ to_fp 8 24) ?x77)))
 (let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x103 (concat (select symbolic_0_float_86 (_ bv1 32)) (select symbolic_0_float_86 (_ bv0 32)))))
 (let ((?x107 (concat (select symbolic_0_float_86 (_ bv3 32)) (concat (select symbolic_0_float_86 (_ bv2 32)) ?x103))))
 (let ((?x108 ((_ to_fp 8 24) ?x107)))
 (let ((?x123 (fp.sub roundNearestTiesToEven ?x108 (fp.sub roundNearestTiesToEven ?x19 ?x78))))
 (or (or (fp.isNaN ?x123) (fp.isNaN ?x125)) (fp.gt ?x123 ?x125))))))))))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (fp.geq ?x35 ?x26))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (fp.leq ?x35 ?x81))))))
(assert
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (let ((?x51 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x132 (fp.sub roundNearestTiesToEven ?x51 ?x35)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x137 (concat (select symbolic_0_float8 (_ bv1 32)) (select symbolic_0_float8 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float8 (_ bv3 32)) (concat (select symbolic_0_float8 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (let ((?x143 (fp.sub roundNearestTiesToEven ?x142 ?x26)))
 (or (fp.isNaN ?x132) (fp.gt ?x143 ?x132)))))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x137 (concat (select symbolic_0_float8 (_ bv1 32)) (select symbolic_0_float8 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float8 (_ bv3 32)) (concat (select symbolic_0_float8 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (let ((?x143 (fp.sub roundNearestTiesToEven ?x142 ?x26)))
 (not (fp.isNaN ?x143))))))))
(assert
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (not (fp.isNaN ?x35))))))
(assert
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x137 (concat (select symbolic_0_float8 (_ bv1 32)) (select symbolic_0_float8 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float8 (_ bv3 32)) (concat (select symbolic_0_float8 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (let ((?x143 (fp.sub roundNearestTiesToEven ?x142 ?x26)))
 (not (fp.lt ?x143 ?x35)))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x45 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x41))))
 (let ((?x46 ((_ to_fp 8 24) ?x45)))
 (fp.geq ?x46 ?x26))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x41 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x45 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x41))))
 (let ((?x46 ((_ to_fp 8 24) ?x45)))
 (fp.leq ?x46 ?x81))))))
(assert
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x37 (fp.add roundNearestTiesToEven ?x26 ?x35)))
 (let ((?x157 (concat (select symbolic_0_float_29 (_ bv1 32)) (select symbolic_0_float_29 (_ bv0 32)))))
 (let ((?x161 (concat (select symbolic_0_float_29 (_ bv3 32)) (concat (select symbolic_0_float_29 (_ bv2 32)) ?x157))))
 (let ((?x162 ((_ to_fp 8 24) ?x161)))
 (let ((?x163 (fp.sub roundNearestTiesToEven ?x162 ?x37)))
 (not (fp.isNaN ?x163))))))))))))
(assert
 (let ((?x41 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x45 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x41))))
 (let ((?x46 ((_ to_fp 8 24) ?x45)))
 (let ((?x51 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x166 (fp.sub roundNearestTiesToEven ?x51 ?x46)))
 (not (fp.isNaN ?x166))))))))
(assert
 (let ((?x41 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x45 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x41))))
 (let ((?x46 ((_ to_fp 8 24) ?x45)))
 (let ((?x51 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x166 (fp.sub roundNearestTiesToEven ?x51 ?x46)))
 (let ((?x30 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x34 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x30))))
 (let ((?x35 ((_ to_fp 8 24) ?x34)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x37 (fp.add roundNearestTiesToEven ?x26 ?x35)))
 (let ((?x157 (concat (select symbolic_0_float_29 (_ bv1 32)) (select symbolic_0_float_29 (_ bv0 32)))))
 (let ((?x161 (concat (select symbolic_0_float_29 (_ bv3 32)) (concat (select symbolic_0_float_29 (_ bv2 32)) ?x157))))
 (let ((?x162 ((_ to_fp 8 24) ?x161)))
 (let ((?x163 (fp.sub roundNearestTiesToEven ?x162 ?x37)))
 (not (fp.gt ?x163 ?x166)))))))))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x55 (concat (select symbolic_0_float_53 (_ bv1 32)) (select symbolic_0_float_53 (_ bv0 32)))))
 (let ((?x59 (concat (select symbolic_0_float_53 (_ bv3 32)) (concat (select symbolic_0_float_53 (_ bv2 32)) ?x55))))
 (let ((?x60 ((_ to_fp 8 24) ?x59)))
 (fp.geq ?x60 ?x26))))))
(assert
 (let ((?x81 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x55 (concat (select symbolic_0_float_53 (_ bv1 32)) (select symbolic_0_float_53 (_ bv0 32)))))
 (let ((?x59 (concat (select symbolic_0_float_53 (_ bv3 32)) (concat (select symbolic_0_float_53 (_ bv2 32)) ?x55))))
 (let ((?x60 ((_ to_fp 8 24) ?x59)))
 (fp.leq ?x60 ?x81))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x86 (concat (select symbolic_0_float_65 (_ bv1 32)) (select symbolic_0_float_65 (_ bv0 32)))))
 (let ((?x90 (concat (select symbolic_0_float_65 (_ bv3 32)) (concat (select symbolic_0_float_65 (_ bv2 32)) ?x86))))
 (let ((?x91 ((_ to_fp 8 24) ?x90)))
 (fp.geq ?x91 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x86 (concat (select symbolic_0_float_65 (_ bv1 32)) (select symbolic_0_float_65 (_ bv0 32)))))
 (let ((?x90 (concat (select symbolic_0_float_65 (_ bv3 32)) (concat (select symbolic_0_float_65 (_ bv2 32)) ?x86))))
 (let ((?x91 ((_ to_fp 8 24) ?x90)))
 (fp.leq ?x91 ?x24))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x137 (concat (select symbolic_0_float8 (_ bv1 32)) (select symbolic_0_float8 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float8 (_ bv3 32)) (concat (select symbolic_0_float8 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (fp.geq ?x142 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x137 (concat (select symbolic_0_float8 (_ bv1 32)) (select symbolic_0_float8 (_ bv0 32)))))
 (let ((?x141 (concat (select symbolic_0_float8 (_ bv3 32)) (concat (select symbolic_0_float8 (_ bv2 32)) ?x137))))
 (let ((?x142 ((_ to_fp 8 24) ?x141)))
 (fp.leq ?x142 ?x24))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x157 (concat (select symbolic_0_float_29 (_ bv1 32)) (select symbolic_0_float_29 (_ bv0 32)))))
 (let ((?x161 (concat (select symbolic_0_float_29 (_ bv3 32)) (concat (select symbolic_0_float_29 (_ bv2 32)) ?x157))))
 (let ((?x162 ((_ to_fp 8 24) ?x161)))
 (fp.geq ?x162 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x157 (concat (select symbolic_0_float_29 (_ bv1 32)) (select symbolic_0_float_29 (_ bv0 32)))))
 (let ((?x161 (concat (select symbolic_0_float_29 (_ bv3 32)) (concat (select symbolic_0_float_29 (_ bv2 32)) ?x157))))
 (let ((?x162 ((_ to_fp 8 24) ?x161)))
 (fp.leq ?x162 ?x24))))))
(assert
 (let ((?x114 (concat (select symbolic_0_float_97 (_ bv1 32)) (select symbolic_0_float_97 (_ bv0 32)))))
(let ((?x118 (concat (select symbolic_0_float_97 (_ bv3 32)) (concat (select symbolic_0_float_97 (_ bv2 32)) ?x114))))
(let ((?x119 ((_ to_fp 8 24) ?x118)))
(let ((?x73 (concat (select symbolic_0_float_74 (_ bv1 32)) (select symbolic_0_float_74 (_ bv0 32)))))
(let ((?x77 (concat (select symbolic_0_float_74 (_ bv3 32)) (concat (select symbolic_0_float_74 (_ bv2 32)) ?x73))))
(let ((?x78 ((_ to_fp 8 24) ?x77)))
(let ((?x12 (concat (select symbolic_0_float_40 (_ bv1 32)) (select symbolic_0_float_40 (_ bv0 32)))))
(let ((?x18 (concat (select symbolic_0_float_40 (_ bv3 32)) (concat (select symbolic_0_float_40 (_ bv2 32)) ?x12))))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(let ((?x103 (concat (select symbolic_0_float_86 (_ bv1 32)) (select symbolic_0_float_86 (_ bv0 32)))))
(let ((?x107 (concat (select symbolic_0_float_86 (_ bv3 32)) (concat (select symbolic_0_float_86 (_ bv2 32)) ?x103))))
(let ((?x108 ((_ to_fp 8 24) ?x107)))
(let ((?x123 (fp.sub roundNearestTiesToEven ?x108 (fp.sub roundNearestTiesToEven ?x19 ?x78))))
(not (or (or (fp.isNaN ?x123) (fp.isNaN ?x119)) (fp.lt ?x123 ?x119)))))))))))))))))
(check-sat)
(exit)
