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
(declare-fun f0 () (Array (_ BitVec 32) (_ BitVec 8)))
(declare-fun g1 () (Array (_ BitVec 32) (_ BitVec 8)))
(assert
 (let ((?x15 (concat (select f0 (_ bv2 32)) (concat (select f0 (_ bv1 32)) (select f0 (_ bv0 32))))))
 (let ((?x20 (select f0 (_ bv4 32))))
 (let ((?x23 (select f0 (_ bv5 32))))
 (let ((?x26 (select f0 (_ bv6 32))))
 (let ((?x27 (concat ?x26 (concat ?x23 (concat ?x20 (concat (select f0 (_ bv3 32)) ?x15))))))
 (let ((?x29 (select f0 (_ bv7 32))))
 (let ((?x31 ((_ to_fp 11 53) (concat ?x29 ?x27))))
 (not (fp.isNaN ?x31))))))))))
(assert
 (let ((?x15 (concat (select f0 (_ bv2 32)) (concat (select f0 (_ bv1 32)) (select f0 (_ bv0 32))))))
 (let ((?x20 (select f0 (_ bv4 32))))
 (let ((?x23 (select f0 (_ bv5 32))))
 (let ((?x26 (select f0 (_ bv6 32))))
 (let ((?x27 (concat ?x26 (concat ?x23 (concat ?x20 (concat (select f0 (_ bv3 32)) ?x15))))))
 (let ((?x29 (select f0 (_ bv7 32))))
 (let ((?x31 ((_ to_fp 11 53) (concat ?x29 ?x27))))
 (let (($x37 (fp.gt ?x31 ((_ to_fp 11 53) (_ bv0 64)))))
 (= (_ bv0 32) (ite (fp.isInfinite ?x31) (ite $x37 (_ bv1 32) (_ bv4294967295 32)) (_ bv0 32))))))))))))
(assert
 (let ((?x15 (concat (select f0 (_ bv2 32)) (concat (select f0 (_ bv1 32)) (select f0 (_ bv0 32))))))
 (let ((?x20 (select f0 (_ bv4 32))))
 (let ((?x23 (select f0 (_ bv5 32))))
 (let ((?x26 (select f0 (_ bv6 32))))
 (let ((?x27 (concat ?x26 (concat ?x23 (concat ?x20 (concat (select f0 (_ bv3 32)) ?x15))))))
 (let ((?x29 (select f0 (_ bv7 32))))
 (let ((?x31 ((_ to_fp 11 53) (concat ?x29 ?x27))))
 (fp.gt ?x31 ((_ to_fp 11 53) (_ bv0 64)))))))))))
(assert
 (let ((?x15 (concat (select f0 (_ bv2 32)) (concat (select f0 (_ bv1 32)) (select f0 (_ bv0 32))))))
 (let ((?x20 (select f0 (_ bv4 32))))
 (let ((?x23 (select f0 (_ bv5 32))))
 (let ((?x26 (select f0 (_ bv6 32))))
 (let ((?x27 (concat ?x26 (concat ?x23 (concat ?x20 (concat (select f0 (_ bv3 32)) ?x15))))))
 (let ((?x29 (select f0 (_ bv7 32))))
 (let ((?x31 ((_ to_fp 11 53) (concat ?x29 ?x27))))
 (let ((?x47 (concat (select g1 (_ bv2 32)) (concat (select g1 (_ bv1 32)) (select g1 (_ bv0 32))))))
 (let ((?x50 (select g1 (_ bv4 32))))
 (let ((?x52 (select g1 (_ bv5 32))))
 (let ((?x54 (select g1 (_ bv6 32))))
 (let ((?x55 (concat ?x54 (concat ?x52 (concat ?x50 (concat (select g1 (_ bv3 32)) ?x47))))))
 (let ((?x56 (select g1 (_ bv7 32))))
 (let ((?x58 ((_ to_fp 11 53) (concat ?x56 ?x55))))
 (fp.gt ?x58 ?x31))))))))))))))))
(assert
 (let ((?x54 (select g1 (_ bv6 32))))
 (let ((?x56 (select g1 (_ bv7 32))))
 (let ((?x68 (concat ?x56 (concat ?x54 (concat (select g1 (_ bv5 32)) (select g1 (_ bv4 32)))))))
 (let ((?x26 (select f0 (_ bv6 32))))
 (let ((?x29 (select f0 (_ bv7 32))))
 (let ((?x62 (concat ?x29 (concat ?x26 (concat (select f0 (_ bv5 32)) (select f0 (_ bv4 32)))))))
 (bvslt (bvxor ?x62 (bvand ?x62 (_ bv2147483648 32))) (bvand ?x68 (_ bv2147483647 32))))))))))
(assert
 (let ((?x47 (concat (select g1 (_ bv2 32)) (concat (select g1 (_ bv1 32)) (select g1 (_ bv0 32))))))
 (let ((?x50 (select g1 (_ bv4 32))))
 (let ((?x52 (select g1 (_ bv5 32))))
 (let ((?x54 (select g1 (_ bv6 32))))
 (let ((?x55 (concat ?x54 (concat ?x52 (concat ?x50 (concat (select g1 (_ bv3 32)) ?x47))))))
 (let ((?x56 (select g1 (_ bv7 32))))
 (let ((?x58 ((_ to_fp 11 53) (concat ?x56 ?x55))))
 (not (fp.isNaN ?x58))))))))))
(assert
 (let ((?x47 (concat (select g1 (_ bv2 32)) (concat (select g1 (_ bv1 32)) (select g1 (_ bv0 32))))))
 (let ((?x50 (select g1 (_ bv4 32))))
 (let ((?x52 (select g1 (_ bv5 32))))
 (let ((?x54 (select g1 (_ bv6 32))))
 (let ((?x55 (concat ?x54 (concat ?x52 (concat ?x50 (concat (select g1 (_ bv3 32)) ?x47))))))
 (let ((?x56 (select g1 (_ bv7 32))))
 (let ((?x58 ((_ to_fp 11 53) (concat ?x56 ?x55))))
 (let (($x75 (fp.gt ?x58 ((_ to_fp 11 53) (_ bv0 64)))))
 (= (_ bv0 32) (ite (fp.isInfinite ?x58) (ite $x75 (_ bv1 32) (_ bv4294967295 32)) (_ bv0 32))))))))))))
(assert
 (let ((?x47 (concat (select g1 (_ bv2 32)) (concat (select g1 (_ bv1 32)) (select g1 (_ bv0 32))))))
 (let ((?x50 (select g1 (_ bv4 32))))
 (let ((?x52 (select g1 (_ bv5 32))))
 (let ((?x54 (select g1 (_ bv6 32))))
 (let ((?x55 (concat ?x54 (concat ?x52 (concat ?x50 (concat (select g1 (_ bv3 32)) ?x47))))))
 (let ((?x56 (select g1 (_ bv7 32))))
 (let ((?x58 ((_ to_fp 11 53) (concat ?x56 ?x55))))
 (fp.gt ?x58 ((_ to_fp 11 53) (_ bv0 64)))))))))))
(assert
 (let ((?x15 (concat (select f0 (_ bv2 32)) (concat (select f0 (_ bv1 32)) (select f0 (_ bv0 32))))))
(let ((?x20 (select f0 (_ bv4 32))))
(let ((?x23 (select f0 (_ bv5 32))))
(let ((?x26 (select f0 (_ bv6 32))))
(let ((?x27 (concat ?x26 (concat ?x23 (concat ?x20 (concat (select f0 (_ bv3 32)) ?x15))))))
(let ((?x29 (select f0 (_ bv7 32))))
(let ((?x31 ((_ to_fp 11 53) (concat ?x29 ?x27))))
(not (fp.eq ?x31 ?x31))))))))))
(check-sat)
(exit)
