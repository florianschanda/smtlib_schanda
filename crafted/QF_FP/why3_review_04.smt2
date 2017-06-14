(set-logic QF_FP)
(set-info :source |Reviewing of Why3 FP theory by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun is_finite ((x Float32)) Bool
  (or (fp.isZero x) (fp.isNormal x) (fp.isSubnormal x)))

(declare-const x Float32)

(assert (is_finite x))

(assert (not (or (fp.isPositive x)
                 (fp.isNegative x))))
(check-sat)
(exit)
