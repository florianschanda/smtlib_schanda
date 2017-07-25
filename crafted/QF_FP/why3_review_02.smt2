(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Reviewing of Why3 FP theory by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x Float32)
(declare-const y Float32)

(define-fun is_finite ((x Float32)) Bool
  (or (fp.isZero x) (fp.isNormal x) (fp.isSubnormal x)))

(define-fun is_minus_infinity ((x Float32)) Bool
  (and (fp.isInfinite x) (fp.isNegative x)))

(define-fun is_plus_infinity ((x Float32)) Bool
  (and (fp.isInfinite x) (fp.isPositive x)))

(define-fun is_not_nan ((x Float32)) Bool (not (fp.isNaN x)))

(assert (fp.leq x y))

(assert (not
         (or (and (is_finite x) (is_finite y))
             (and (is_minus_infinity x) (is_not_nan y))
             (and (is_not_nan x) (is_plus_infinity y)))
         ))
(check-sat)
(exit)
