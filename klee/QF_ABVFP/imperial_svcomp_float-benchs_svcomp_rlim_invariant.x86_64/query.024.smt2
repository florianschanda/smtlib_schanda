(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.024.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_11 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_32 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_23 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.geq ?x19 ((_ to_fp 8 24) (_ bv3271557120 32)))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.leq ?x19 ((_ to_fp 8 24) (_ bv1124073472 32)))))))
(assert
 (let ((?x35 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x39 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x35))))
 (let ((?x40 ((_ to_fp 8 24) ?x39)))
 (let ((?x41 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv2147483648 32)) ?x40)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x19 ?x26)))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x41)) (fp.gt ?x28 ?x41))))))))))))
(assert
 (let ((?x35 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x39 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x35))))
 (let ((?x40 ((_ to_fp 8 24) ?x39)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x19 ?x26)))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x40)) (fp.lt ?x28 ?x40)))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (fp.geq ?x58 ?x26))))))
(assert
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (fp.leq ?x58 ((_ to_fp 8 24) (_ bv1098907648 32)))))))
(assert
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (let ((?x63 (fp.sub roundNearestTiesToEven ((_ to_fp 8 24) (_ bv2147483648 32)) ?x58)))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x68 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x72 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x68))))
 (let ((?x73 ((_ to_fp 8 24) ?x72)))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x73 ?x19)))
 (or (fp.isNaN ?x63) (fp.gt ?x74 ?x63))))))))))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x68 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x72 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x68))))
 (let ((?x73 ((_ to_fp 8 24) ?x72)))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x73 ?x19)))
 (not (fp.isNaN ?x74))))))))))
(assert
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (not (fp.isNaN ?x58))))))
(assert
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x68 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x72 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x68))))
 (let ((?x73 ((_ to_fp 8 24) ?x72)))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x73 ?x19)))
 (not (fp.lt ?x74 ?x58)))))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x35 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x39 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x35))))
 (let ((?x40 ((_ to_fp 8 24) ?x39)))
 (fp.geq ?x40 ?x26))))))
(assert
 (let ((?x35 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x39 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x35))))
 (let ((?x40 ((_ to_fp 8 24) ?x39)))
 (fp.leq ?x40 ((_ to_fp 8 24) (_ bv1098907648 32)))))))
(assert
 (let ((?x68 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x72 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x68))))
 (let ((?x73 ((_ to_fp 8 24) ?x72)))
 (fp.geq ?x73 ((_ to_fp 8 24) (_ bv3271557120 32)))))))
(assert
 (let ((?x68 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x72 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x68))))
 (let ((?x73 ((_ to_fp 8 24) ?x72)))
 (fp.leq ?x73 ((_ to_fp 8 24) (_ bv1124073472 32)))))))
(assert
 (not false))
(check-sat)
(exit)
