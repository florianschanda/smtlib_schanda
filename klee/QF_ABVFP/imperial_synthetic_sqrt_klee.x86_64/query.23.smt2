(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (arrays replaced with bitvectors) is available at QF_BVFP/20170428-Liew-KLEE/imperial_synthetic_sqrt_klee.x86_64/query.23.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun fresh_to_ieee_bv_!0 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!2 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!3 () (_ BitVec 32))
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
 (let ((?x38 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ((_ to_fp 8 24) (_ bv0 32))) ?x32)))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x34 ?x19)) ?x38))))))))))
(assert
 (let ((?x38 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ((_ to_fp 8 24) (_ bv0 32))) ?x32)))
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (let (($x41 (fp.gt ?x34 ?x19)))
 (let ((?x47 (ite $x41 ?x22 ?x33)))
 (let ((?x48 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x41 fresh_to_ieee_bv_!0 ?x18)) ?x47)))
 (let ((?x49 (fp.mul roundNearestTiesToEven ?x48 ?x32)))
 (let ((?x50 (fp.mul roundNearestTiesToEven ?x49 ?x49)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x50 ?x19)) ?x38))))))))))))))))
(assert
 (let ((?x38 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ((_ to_fp 8 24) (_ bv0 32))) ?x32)))
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (let (($x41 (fp.gt ?x34 ?x19)))
 (let ((?x47 (ite $x41 ?x22 ?x33)))
 (let ((?x48 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x41 fresh_to_ieee_bv_!0 ?x18)) ?x47)))
 (let ((?x49 (fp.mul roundNearestTiesToEven ?x48 ?x32)))
 (let ((?x50 (fp.mul roundNearestTiesToEven ?x49 ?x49)))
 (let (($x55 (fp.gt ?x50 ?x19)))
 (let ((?x61 (ite $x55 ?x47 ?x49)))
 (let ((?x45 (ite $x41 fresh_to_ieee_bv_!0 ?x18)))
 (let ((?x59 (ite $x55 fresh_to_ieee_bv_!1 ?x45)))
 (let ((?x63 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x59) ?x61) ?x32)))
 (let ((?x64 (fp.mul roundNearestTiesToEven ?x63 ?x63)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x64 ?x19)) ?x38))))))))))))))))))))))
(assert
 (let ((?x38 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ((_ to_fp 8 24) (_ bv0 32))) ?x32)))
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (let (($x41 (fp.gt ?x34 ?x19)))
 (let ((?x47 (ite $x41 ?x22 ?x33)))
 (let ((?x48 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x41 fresh_to_ieee_bv_!0 ?x18)) ?x47)))
 (let ((?x49 (fp.mul roundNearestTiesToEven ?x48 ?x32)))
 (let ((?x50 (fp.mul roundNearestTiesToEven ?x49 ?x49)))
 (let (($x55 (fp.gt ?x50 ?x19)))
 (let ((?x61 (ite $x55 ?x47 ?x49)))
 (let ((?x45 (ite $x41 fresh_to_ieee_bv_!0 ?x18)))
 (let ((?x59 (ite $x55 fresh_to_ieee_bv_!1 ?x45)))
 (let ((?x63 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x59) ?x61) ?x32)))
 (let ((?x64 (fp.mul roundNearestTiesToEven ?x63 ?x63)))
 (let (($x69 (fp.gt ?x64 ?x19)))
 (let ((?x75 (ite $x69 ?x61 ?x63)))
 (let ((?x76 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x69 fresh_to_ieee_bv_!2 ?x59)) ?x75)))
 (let ((?x77 (fp.mul roundNearestTiesToEven ?x76 ?x32)))
 (let ((?x78 (fp.mul roundNearestTiesToEven ?x77 ?x77)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x78 ?x19)) ?x38)))))))))))))))))))))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ?x22) ?x32)))
 (= ?x33 ((_ to_fp 8 24) fresh_to_ieee_bv_!0)))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ?x22) ?x32)))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (let (($x41 (fp.gt ?x34 ?x19)))
 (let ((?x47 (ite $x41 ?x22 ?x33)))
 (let ((?x48 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x41 fresh_to_ieee_bv_!0 ?x18)) ?x47)))
 (let ((?x49 (fp.mul roundNearestTiesToEven ?x48 ?x32)))
 (= ?x49 ((_ to_fp 8 24) fresh_to_ieee_bv_!1))))))))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ?x22) ?x32)))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (let (($x41 (fp.gt ?x34 ?x19)))
 (let ((?x47 (ite $x41 ?x22 ?x33)))
 (let ((?x48 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x41 fresh_to_ieee_bv_!0 ?x18)) ?x47)))
 (let ((?x49 (fp.mul roundNearestTiesToEven ?x48 ?x32)))
 (let ((?x50 (fp.mul roundNearestTiesToEven ?x49 ?x49)))
 (let (($x55 (fp.gt ?x50 ?x19)))
 (let ((?x61 (ite $x55 ?x47 ?x49)))
 (let ((?x45 (ite $x41 fresh_to_ieee_bv_!0 ?x18)))
 (let ((?x59 (ite $x55 fresh_to_ieee_bv_!1 ?x45)))
 (let ((?x63 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x59) ?x61) ?x32)))
 (= ?x63 ((_ to_fp 8 24) fresh_to_ieee_bv_!2))))))))))))))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
 (let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
 (let ((?x19 ((_ to_fp 8 24) ?x18)))
 (let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ?x22) ?x32)))
 (let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
 (let (($x41 (fp.gt ?x34 ?x19)))
 (let ((?x47 (ite $x41 ?x22 ?x33)))
 (let ((?x48 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x41 fresh_to_ieee_bv_!0 ?x18)) ?x47)))
 (let ((?x49 (fp.mul roundNearestTiesToEven ?x48 ?x32)))
 (let ((?x50 (fp.mul roundNearestTiesToEven ?x49 ?x49)))
 (let (($x55 (fp.gt ?x50 ?x19)))
 (let ((?x61 (ite $x55 ?x47 ?x49)))
 (let ((?x45 (ite $x41 fresh_to_ieee_bv_!0 ?x18)))
 (let ((?x59 (ite $x55 fresh_to_ieee_bv_!1 ?x45)))
 (let ((?x63 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x59) ?x61) ?x32)))
 (let ((?x64 (fp.mul roundNearestTiesToEven ?x63 ?x63)))
 (let (($x69 (fp.gt ?x64 ?x19)))
 (let ((?x75 (ite $x69 ?x61 ?x63)))
 (let ((?x76 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x69 fresh_to_ieee_bv_!2 ?x59)) ?x75)))
 (let ((?x77 (fp.mul roundNearestTiesToEven ?x76 ?x32)))
 (= ?x77 ((_ to_fp 8 24) fresh_to_ieee_bv_!3)))))))))))))))))))))))))
(assert
 (let ((?x15 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
(let ((?x18 (concat (select x0 (_ bv3 32)) ?x15)))
(let ((?x19 ((_ to_fp 8 24) ?x18)))
(let ((?x32 ((_ to_fp 8 24) (_ bv1056964608 32))))
(let ((?x33 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x19 ((_ to_fp 8 24) (_ bv0 32))) ?x32)))
(let ((?x34 (fp.mul roundNearestTiesToEven ?x33 ?x33)))
(let (($x41 (fp.gt ?x34 ?x19)))
(let ((?x45 (ite $x41 fresh_to_ieee_bv_!0 ?x18)))
(let ((?x22 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x47 (ite $x41 ?x22 ?x33)))
(let ((?x49 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x45) ?x47) ?x32)))
(let ((?x50 (fp.mul roundNearestTiesToEven ?x49 ?x49)))
(let (($x55 (fp.gt ?x50 ?x19)))
(let ((?x59 (ite $x55 fresh_to_ieee_bv_!1 ?x45)))
(let ((?x63 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x59) (ite $x55 ?x47 ?x49)) ?x32)))
(let ((?x64 (fp.mul roundNearestTiesToEven ?x63 ?x63)))
(let (($x69 (fp.gt ?x64 ?x19)))
(let ((?x73 (ite $x69 fresh_to_ieee_bv_!2 ?x59)))
(let ((?x61 (ite $x55 ?x47 ?x49)))
(let ((?x75 (ite $x69 ?x61 ?x63)))
(let ((?x77 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x73) ?x75) ?x32)))
(let ((?x78 (fp.mul roundNearestTiesToEven ?x77 ?x77)))
(let (($x83 (fp.gt ?x78 ?x19)))
(let ((?x84 (ite $x83 ?x75 ?x77)))
(let (($x94 (and (not (fp.isNaN ?x84)) (not (fp.isNaN ((_ to_fp 8 24) (ite $x83 fresh_to_ieee_bv_!3 ?x73)))))))
(let (($x97 (and $x94 (not (fp.gt ?x84 ((_ to_fp 8 24) (ite $x83 fresh_to_ieee_bv_!3 ?x73)))))))
(not $x97))))))))))))))))))))))))))))
(check-sat)
(exit)
