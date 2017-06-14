(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)

;; isfinite(x)
(assert (or (fp.isNormal x)
            (fp.isSubnormal x)
            (fp.isZero x)))

;; y = float64(x)
(define-fun y () Float64
  ((_ to_fp 11 53) RNE x))

;; goal: x * x * x = float32(y * y * y)
(assert (not
         (fp.eq (fp.mul RNE (fp.mul RNE x x) x)
                ((_ to_fp 8 24) RNE (fp.mul RNE (fp.mul RNE y y) y)))))

(check-sat)
(exit)
