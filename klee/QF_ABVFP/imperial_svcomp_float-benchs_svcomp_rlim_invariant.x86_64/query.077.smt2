(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.077.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun symbolic_0_float0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_11 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_32 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_23 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_54 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun symbolic_0_float_45 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.geq ?x19 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (fp.leq ?x19 ?x24))))))
(assert
 (let ((?x35 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x39 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x35))))
 (let ((?x40 ((_ to_fp 8 24) ?x39)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x41 (fp.sub roundNearestTiesToEven ?x31 ?x40)))
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x28 (fp.sub roundNearestTiesToEven ?x19 ?x26)))
 (or (or (fp.isNaN ?x28) (fp.isNaN ?x41)) (fp.gt ?x28 ?x41)))))))))))))
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
 (let ((?x61 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (fp.leq ?x58 ?x61))))))
(assert
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x66 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x70 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x66))))
 (let ((?x71 ((_ to_fp 8 24) ?x70)))
 (let ((?x72 (fp.sub roundNearestTiesToEven ?x71 ?x19)))
 (not (fp.isNaN ?x72))))))))))
(assert
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x75 (fp.sub roundNearestTiesToEven ?x31 ?x58)))
 (not (fp.isNaN ?x75))))))))
(assert
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x75 (fp.sub roundNearestTiesToEven ?x31 ?x58)))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x66 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x70 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x66))))
 (let ((?x71 ((_ to_fp 8 24) ?x70)))
 (let ((?x72 (fp.sub roundNearestTiesToEven ?x71 ?x19)))
 (not (fp.gt ?x72 ?x75)))))))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x83 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x87 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x83))))
 (let ((?x88 ((_ to_fp 8 24) ?x87)))
 (fp.geq ?x88 ?x26))))))
(assert
 (let ((?x61 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x83 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x87 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x83))))
 (let ((?x88 ((_ to_fp 8 24) ?x87)))
 (fp.leq ?x88 ?x61))))))
(assert
 (let ((?x83 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x87 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x83))))
 (let ((?x88 ((_ to_fp 8 24) ?x87)))
 (let ((?x31 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x91 (fp.sub roundNearestTiesToEven ?x31 ?x88)))
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x102 (fp.sub roundNearestTiesToEven ?x19 ?x58)))
 (let ((?x96 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (let ((?x103 (fp.sub roundNearestTiesToEven ?x101 ?x102)))
 (or (fp.isNaN ?x91) (fp.gt ?x103 ?x91)))))))))))))))))))
(assert
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x102 (fp.sub roundNearestTiesToEven ?x19 ?x58)))
 (let ((?x96 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (let ((?x103 (fp.sub roundNearestTiesToEven ?x101 ?x102)))
 (not (fp.isNaN ?x103))))))))))))))
(assert
 (let ((?x83 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x87 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x83))))
 (let ((?x88 ((_ to_fp 8 24) ?x87)))
 (not (fp.isNaN ?x88))))))
(assert
 (let ((?x83 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
 (let ((?x87 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x83))))
 (let ((?x88 ((_ to_fp 8 24) ?x87)))
 (let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
 (let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
 (let ((?x58 ((_ to_fp 8 24) ?x57)))
 (let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
 (let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x102 (fp.sub roundNearestTiesToEven ?x19 ?x58)))
 (let ((?x96 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (let ((?x103 (fp.sub roundNearestTiesToEven ?x101 ?x102)))
 (not (fp.lt ?x103 ?x88)))))))))))))))))
(assert
 (let ((?x26 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x35 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x39 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x35))))
 (let ((?x40 ((_ to_fp 8 24) ?x39)))
 (fp.geq ?x40 ?x26))))))
(assert
 (let ((?x61 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x35 (concat (select symbolic_0_float_11 (_ bv1 32)) (select symbolic_0_float_11 (_ bv0 32)))))
 (let ((?x39 (concat (select symbolic_0_float_11 (_ bv3 32)) (concat (select symbolic_0_float_11 (_ bv2 32)) ?x35))))
 (let ((?x40 ((_ to_fp 8 24) ?x39)))
 (fp.leq ?x40 ?x61))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x66 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x70 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x66))))
 (let ((?x71 ((_ to_fp 8 24) ?x70)))
 (fp.geq ?x71 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x66 (concat (select symbolic_0_float_23 (_ bv1 32)) (select symbolic_0_float_23 (_ bv0 32)))))
 (let ((?x70 (concat (select symbolic_0_float_23 (_ bv3 32)) (concat (select symbolic_0_float_23 (_ bv2 32)) ?x66))))
 (let ((?x71 ((_ to_fp 8 24) ?x70)))
 (fp.leq ?x71 ?x24))))))
(assert
 (let ((?x21 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x96 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (fp.geq ?x101 ?x21))))))
(assert
 (let ((?x24 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x96 (concat (select symbolic_0_float_45 (_ bv1 32)) (select symbolic_0_float_45 (_ bv0 32)))))
 (let ((?x100 (concat (select symbolic_0_float_45 (_ bv3 32)) (concat (select symbolic_0_float_45 (_ bv2 32)) ?x96))))
 (let ((?x101 ((_ to_fp 8 24) ?x100)))
 (fp.leq ?x101 ?x24))))))
(assert
 (let ((?x83 (concat (select symbolic_0_float_54 (_ bv1 32)) (select symbolic_0_float_54 (_ bv0 32)))))
(let ((?x87 (concat (select symbolic_0_float_54 (_ bv3 32)) (concat (select symbolic_0_float_54 (_ bv2 32)) ?x83))))
(let ((?x88 ((_ to_fp 8 24) ?x87)))
(let ((?x53 (concat (select symbolic_0_float_32 (_ bv1 32)) (select symbolic_0_float_32 (_ bv0 32)))))
(let ((?x57 (concat (select symbolic_0_float_32 (_ bv3 32)) (concat (select symbolic_0_float_32 (_ bv2 32)) ?x53))))
(let ((?x58 ((_ to_fp 8 24) ?x57)))
(let ((?x12 (concat (select symbolic_0_float0 (_ bv1 32)) (select symbolic_0_float0 (_ bv0 32)))))
(let ((?x18 (concat (select symbolic_0_float0 (_ bv3 32)) (concat (select symbolic_0_float0 (_ bv2 32)) ?x12))))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(let ((?x102 (fp.sub roundNearestTiesToEven ?x19 ?x58)))
(let ((?x118 (fp.add roundNearestTiesToEven ?x102 ?x88)))
(not (and (fp.geq ?x118 ((_ to_fp 8 24) (_ bv3271622656 32))) (fp.leq ?x118 ((_ to_fp 8 24) (_ bv1124139008 32)))))))))))))))))
(check-sat)
(exit)
