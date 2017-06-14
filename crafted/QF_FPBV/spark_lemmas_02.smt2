(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
;;(set-info :status unsat)

;; fp_real_literals
;; bv_literals

;; An easier version, with 16 bit floats.

(define-fun finite ((x Float16)) Bool
  (or (fp.isZero x) (fp.isSubnormal x) (fp.isNormal x)))

(define-const last_exact_int (_ BitVec 65) (_ bv2048 65))  ;; 2^11

(declare-const x (_ BitVec 65))
(assert (bvsge x (_ bv0 65)))
(assert (bvsle x (_ bv2147483647 65)))
(define-const fx Float16 ((_ to_fp 5 11) RNE x))

(declare-const y (_ BitVec 65))
(assert (bvsge y (_ bv0 65)))
(assert (bvsle y (_ bv2147483647 65)))
(define-const fy Float16 ((_ to_fp 5 11) RNE y))

(declare-const z (_ BitVec 65))
(assert (bvsge z (_ bv0 65)))
(assert (bvsle z (_ bv2147483647 65)))
(define-const fz Float16 ((_ to_fp 5 11) RNE z))

(assert (finite fx))
(assert (finite fy))
(assert (finite fz))
(assert (finite (fp.add RNE fx fy)))

(assert (bvsle (bvmul (bvadd x y) z) last_exact_int))

;; (x+y) * z  ==  x*z + y*z
(assert (not (fp.eq (fp.mul RNE (fp.add RNE fx fy) fz)
                    (fp.add RNE (fp.mul RNE fx fz)
                                (fp.mul RNE fy fz)))))


(check-sat)
(get-value (x y z))
(get-value (fx fy fz))
(get-value ((fp.add RNE fx fy)))
(exit)
