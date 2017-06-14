(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(define-fun isFinite ((f Float32)) Bool
  (or (fp.isNormal f)
      (fp.isZero f)
      (fp.isSubnormal f)))

(declare-const x Float32)

(define-fun f1  () Float32 ((_ to_fp 8 24) RNE 1.0))
(define-fun f10 () Float32 ((_ to_fp 8 24) RNE 10.0))

;; isfinite(x)
(assert (isFinite x))

;; goal: x * 10.0 /= 1.0
(assert (not (not (fp.eq (fp.mul RNE x f10) f1))))
(check-sat)
(exit)
