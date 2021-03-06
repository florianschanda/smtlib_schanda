(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_synthetic_sqrt_klee.x86_64/query.12.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun fresh_to_ieee_bv_!0 () (_ BitVec 32))
(assert
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (not (fp.isNaN ?x19))))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (not (fp.lt ?x19 ?x22)))))))
(assert
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (not (fp.gt ?x19 ((_ to_fp 8 24) (_ bv1120403456 32))))))))
(assert
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ((_ to_fp 8 24) (_ bv0 32))) ((_ to_fp 8 24) (_ bv1056964608 32)))))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (let (($x39 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x34 ?x19)) ((_ to_fp 8 24) (_ bv869711765 32)))))
 (not $x39))))))))
(assert
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ((_ to_fp 8 24) (_ bv0 32))) ((_ to_fp 8 24) (_ bv1056964608 32)))))
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (let (($x41 (fp.gt ?x34 ?x19)))
 (let ((?x48 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x41 fresh_to_ieee_bv_!0 ?x18)) (ite $x41 ?x22 ?x33))))
 (let ((?x49 (fp.mul roundNearestTiesToEven ?x48 ((_ to_fp 8 24) (_ bv1056964608 32)))))
 (let ((?x51 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x49 ?x49) ?x19)))
 (fp.lt (fp.abs ?x51) ((_ to_fp 8 24) (_ bv869711765 32))))))))))))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ?x22) ((_ to_fp 8 24) (_ bv1056964608 32)))))
 (= ?x33 ((_ to_fp 8 24) fresh_to_ieee_bv_!0))))))))
(assert
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
(let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ((_ to_fp 8 24) (_ bv0 32))) ((_ to_fp 8 24) (_ bv1056964608 32)))))
(let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
(let (($x41 (fp.gt ?x34 ?x19)))
(let ((?x48 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x41 fresh_to_ieee_bv_!0 ?x18)) (ite $x41 ?x22 ?x33))))
(let ((?x49 (fp.mul roundNearestTiesToEven ?x48 ((_ to_fp 8 24) (_ bv1056964608 32)))))
(not (and (not (fp.isNaN ?x49)) (not (fp.gt ?x49 ?x19))))))))))))))
(check-sat)
(exit)
