(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_synthetic_sum_is_commutative_klee_float_bug.x86_64/query.17.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun data0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select data0 (_ bv2 32)) (concat (select data0 (_ bv1 32)) (select data0 (_ bv0 32))))))
 (fp.gt ((_ to_fp 8 24) (concat (select data0 (_ bv3 32)) ?x15)) ((_ to_fp 8 24) (_ bv0 32)))))
(assert
 (let ((?x75 (concat (select data0 (_ bv18 32)) (concat (select data0 (_ bv17 32)) (select data0 (_ bv16 32))))))
 (let ((?x29 (concat (select data0 (_ bv14 32)) (concat (select data0 (_ bv13 32)) (select data0 (_ bv12 32))))))
 (let ((?x33 ((_ to_fp 8 24) (concat (select data0 (_ bv15 32)) ?x29))))
 (let ((?x41 (concat (select data0 (_ bv10 32)) (concat (select data0 (_ bv9 32)) (select data0 (_ bv8 32))))))
 (let ((?x45 ((_ to_fp 8 24) (concat (select data0 (_ bv11 32)) ?x41))))
 (let ((?x53 (concat (select data0 (_ bv6 32)) (concat (select data0 (_ bv5 32)) (select data0 (_ bv4 32))))))
 (let ((?x57 ((_ to_fp 8 24) (concat (select data0 (_ bv7 32)) ?x53))))
 (let ((?x15 (concat (select data0 (_ bv2 32)) (concat (select data0 (_ bv1 32)) (select data0 (_ bv0 32))))))
 (let ((?x59 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (concat (select data0 (_ bv3 32)) ?x15)) ((_ to_fp 8 24) (_ bv0 32)))))
 (let ((?x66 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x59 ?x57) ?x45)))
 (let ((?x80 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x66 ?x33) ((_ to_fp 8 24) (concat (select data0 (_ bv19 32)) ?x75)))))
 (let ((?x61 (fp.add roundNearestTiesToEven ?x45 (fp.add roundNearestTiesToEven ?x57 ?x59))))
 (let ((?x62 (fp.add roundNearestTiesToEven ?x33 ?x61)))
 (= (_ bv0 32) (bvand (ite (fp.isNaN ?x62) (_ bv1 32) (_ bv0 32)) (ite (fp.isNaN ?x80) (_ bv1 32) (_ bv0 32))))))))))))))))))
(assert
 (let ((?x15 (concat (select data0 (_ bv2 32)) (concat (select data0 (_ bv1 32)) (select data0 (_ bv0 32))))))
 (let ((?x59 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (concat (select data0 (_ bv3 32)) ?x15)) ((_ to_fp 8 24) (_ bv0 32)))))
 (let ((?x53 (concat (select data0 (_ bv6 32)) (concat (select data0 (_ bv5 32)) (select data0 (_ bv4 32))))))
 (let ((?x57 ((_ to_fp 8 24) (concat (select data0 (_ bv7 32)) ?x53))))
 (let ((?x41 (concat (select data0 (_ bv10 32)) (concat (select data0 (_ bv9 32)) (select data0 (_ bv8 32))))))
 (let ((?x45 ((_ to_fp 8 24) (concat (select data0 (_ bv11 32)) ?x41))))
 (let ((?x61 (fp.add roundNearestTiesToEven ?x45 (fp.add roundNearestTiesToEven ?x57 ?x59))))
 (let ((?x29 (concat (select data0 (_ bv14 32)) (concat (select data0 (_ bv13 32)) (select data0 (_ bv12 32))))))
 (let ((?x33 ((_ to_fp 8 24) (concat (select data0 (_ bv15 32)) ?x29))))
 (let ((?x62 (fp.add roundNearestTiesToEven ?x33 ?x61)))
 (let ((?x75 (concat (select data0 (_ bv18 32)) (concat (select data0 (_ bv17 32)) (select data0 (_ bv16 32))))))
 (let ((?x66 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x59 ?x57) ?x45)))
 (let ((?x80 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x66 ?x33) ((_ to_fp 8 24) (concat (select data0 (_ bv19 32)) ?x75)))))
 (not (fp.eq ?x80 ?x62))))))))))))))))
(assert
 (let ((?x53 (concat (select data0 (_ bv6 32)) (concat (select data0 (_ bv5 32)) (select data0 (_ bv4 32))))))
 (let ((?x57 ((_ to_fp 8 24) (concat (select data0 (_ bv7 32)) ?x53))))
 (fp.lt ((_ to_fp 8 24) (_ bv1065353216 32)) ?x57))))
(assert
 (let ((?x41 (concat (select data0 (_ bv10 32)) (concat (select data0 (_ bv9 32)) (select data0 (_ bv8 32))))))
 (let ((?x45 ((_ to_fp 8 24) (concat (select data0 (_ bv11 32)) ?x41))))
 (fp.lt ((_ to_fp 8 24) (_ bv1073741824 32)) ?x45))))
(assert
 (let ((?x29 (concat (select data0 (_ bv14 32)) (concat (select data0 (_ bv13 32)) (select data0 (_ bv12 32))))))
 (let ((?x33 ((_ to_fp 8 24) (concat (select data0 (_ bv15 32)) ?x29))))
 (fp.lt ((_ to_fp 8 24) (_ bv1077936128 32)) ?x33))))
(assert
 (let ((?x75 (concat (select data0 (_ bv18 32)) (concat (select data0 (_ bv17 32)) (select data0 (_ bv16 32))))))
 (not (fp.lt ((_ to_fp 8 24) (_ bv1082130432 32)) ((_ to_fp 8 24) (concat (select data0 (_ bv19 32)) ?x75))))))
(assert
 (not false))
(check-sat)
(exit)
