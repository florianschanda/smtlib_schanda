(set-logic QF_FPBV)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-const last_exact_int (_ BitVec 65) (_ bv16777216 65))  ;; 2^24

(declare-const x (_ BitVec 65))
(assert (bvsge x (_ bv0 65)))
(assert (bvsle x (_ bv2147483647 65)))
(define-const fx Float32 ((_ to_fp 8 24) RNE x))

(declare-const y (_ BitVec 65))
(assert (bvsge y (_ bv0 65)))
(assert (bvsle y (_ bv2147483647 65)))
(define-const fy Float32 ((_ to_fp 8 24) RNE y))

(declare-const z (_ BitVec 65))
(assert (bvsge z (_ bv0 65)))
(assert (bvsle z (_ bv2147483647 65)))
(define-const fz Float32 ((_ to_fp 8 24) RNE z))

(assert (bvsle (bvmul (bvadd x y) z) last_exact_int))

(assert (not (fp.eq (fp.mul RNE (fp.add RNE fx fy) fz)
                    (fp.add RNE (fp.mul RNE fx fz)
                                (fp.mul RNE fy fz)))))


(check-sat)
(exit)
