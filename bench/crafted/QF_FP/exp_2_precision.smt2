(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)

;; isfinite(x)
(assert (or (fp.isNormal x)
            (fp.isSubnormal x)
            (fp.isZero x)))

;; y = float64(x)
(define-fun y () Float64
  ((_ to_fp 11 53) RNE x))

;; goal: x * x = float32(y * y)
(assert (not
         (fp.eq (fp.mul RNE x x)
                ((_ to_fp 8 24) RNE (fp.mul RNE y y)))))

(check-sat)
(exit)
