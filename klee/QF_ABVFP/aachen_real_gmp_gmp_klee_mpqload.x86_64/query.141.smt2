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
(declare-fun i0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun fresh_to_ieee_bv_!0 () (_ BitVec 64))
(declare-fun const_arr31 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select i0 (_ bv2 32)) (concat (select i0 (_ bv1 32)) (select i0 (_ bv0 32))))))
 (let ((?x20 ((_ to_fp 11 53) roundNearestTiesToEven (concat (select i0 (_ bv3 32)) ?x15))))
 (or (fp.isNaN ?x20) (fp.lt ?x20 ((_ to_fp 11 53) (_ bv0 64)))))))
(assert
 (let ((?x15 (concat (select i0 (_ bv2 32)) (concat (select i0 (_ bv1 32)) (select i0 (_ bv0 32))))))
 (let ((?x20 ((_ to_fp 11 53) roundNearestTiesToEven (concat (select i0 (_ bv3 32)) ?x15))))
 (= (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv9223372036854775808 64)) ?x20) ((_ to_fp 11 53) fresh_to_ieee_bv_!0)))))
(assert
 (let ((?x43 (bvsdiv (bvadd (_ bv3074 64) (bvand (concat (_ bv0 52) ((_ extract 63 52) fresh_to_ieee_bv_!0)) (_ bv2047 64))) (_ bv64 64))))
(let ((?x46 ((_ sign_extend 32) ((_ extract 31 0) (bvadd (_ bv18446744073709551553 64) ?x43)))))
(let ((?x53 ((_ extract 31 0) (bvmul (_ bv8 64) (bvadd (_ bv18446744073709551615 64) ((_ sign_extend 32) ((_ extract 31 0) (bvsub (_ bv2 64) ?x46))))))))
(let ((?x59 ((_ extract 31 0) (bvmul (_ bv8 64) (bvsub (_ bv1 64) ?x46)))))
(let ((?x75 (store (store (store (store const_arr31 (_ bv0 32) (_ bv1 8)) (_ bv1 32) (_ bv0 8)) (_ bv2 32) (_ bv0 8)) (_ bv3 32) (_ bv0 8))))
(let ((?x79 (store (store (store (store ?x75 (_ bv4 32) (_ bv0 8)) (_ bv5 32) (_ bv0 8)) (_ bv6 32) (_ bv0 8)) (_ bv7 32) (_ bv0 8))))
(let ((?x82 (store (store (store ?x79 ?x59 (_ bv1 8)) (bvadd (_ bv1 32) ?x59) (_ bv0 8)) (bvadd (_ bv2 32) ?x59) (_ bv0 8))))
(let ((?x85 (store (store (store ?x82 (bvadd (_ bv3 32) ?x59) (_ bv0 8)) (bvadd (_ bv4 32) ?x59) (_ bv0 8)) (bvadd (_ bv5 32) ?x59) (_ bv0 8))))
(let ((?x87 (store (store ?x85 (bvadd (_ bv6 32) ?x59) (_ bv0 8)) (bvadd (_ bv7 32) ?x59) (_ bv0 8))))
(let ((?x94 (concat (select ?x87 (bvadd (_ bv2 32) ?x53)) (concat (select ?x87 (bvadd (_ bv1 32) ?x53)) (select ?x87 ?x53)))))
(let ((?x100 (concat (select ?x87 (bvadd (_ bv4 32) ?x53)) (concat (select ?x87 (bvadd (_ bv3 32) ?x53)) ?x94))))
(let ((?x106 (concat (select ?x87 (bvadd (_ bv6 32) ?x53)) (concat (select ?x87 (bvadd (_ bv5 32) ?x53)) ?x100))))
(not (not (= (_ bv0 64) (concat (select ?x87 (bvadd (_ bv7 32) ?x53)) ?x106)))))))))))))))))
(check-sat)
(exit)
