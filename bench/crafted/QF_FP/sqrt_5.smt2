(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

(define-const one Float32 ((_ to_fp 8 24) RNE 1.0))
(declare-const x Float32)
(assert (or (fp.isZero x) (fp.isSubnormal x) (fp.isNormal x)))
(assert (or (fp.isZero x) (fp.isPositive x)))

(define-const root Float32 (fp.sqrt RNE x))

;; sqrt(x) > x if x < 1 (NOT TRUE)
(assert (fp.lt x one))
(assert (not (fp.gt root x)))

(check-sat)
(exit)
