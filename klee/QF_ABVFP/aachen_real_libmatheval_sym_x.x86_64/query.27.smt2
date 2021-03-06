(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun x0 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (select x0 (_ bv6 32))))
 (let ((?x18 (select x0 (_ bv7 32))))
 (let ((?x19 (concat ?x18 (concat ?x15 (concat (select x0 (_ bv5 32)) (select x0 (_ bv4 32)))))))
 (bvslt (_ bv2146435072 32) (bvand ?x19 (_ bv2147483647 32)))))))
(assert
 (let ((?x32 (concat (select x0 (_ bv2 32)) (concat (select x0 (_ bv1 32)) (select x0 (_ bv0 32))))))
(let ((?x10 (select x0 (_ bv4 32))))
(let ((?x12 (select x0 (_ bv5 32))))
(let ((?x15 (select x0 (_ bv6 32))))
(let ((?x38 (concat ?x15 (concat ?x12 (concat ?x10 (concat (select x0 (_ bv3 32)) ?x32))))))
(let ((?x18 (select x0 (_ bv7 32))))
(let ((?x44 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) (concat ?x18 ?x38)) ((_ to_fp 11 53) (_ bv4611686018427387904 64)))))
(let ((?x45 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4614162998222441677 64)) ?x44)))
(let ((?x52 (ite (fp.isInfinite ?x45) (ite (fp.gt ?x45 ((_ to_fp 11 53) (_ bv0 64))) (_ bv1 32) (_ bv4294967295 32)) (_ bv0 32))))
(not (= (_ bv0 32) ?x52))))))))))))
(check-sat)
(exit)
