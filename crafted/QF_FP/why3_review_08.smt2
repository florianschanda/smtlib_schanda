(set-logic QF_FP)
(set-info :source |Reviewing of Why3 FP theory by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-fun is_finite ((x Float32)) Bool
  (or (fp.isZero x) (fp.isNormal x) (fp.isSubnormal x)))
(define-const zeroF Float32 (_ +zero 8 24))

(declare-const x Float32)
(declare-const r RoundingMode)

(assert (is_finite x))
(assert (fp.geq x zeroF))

(assert (not (is_finite (fp.sqrt r x))))
(check-sat)
(exit)
