(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda and Martin Brain|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

; This is valid in SPARK since we always exclude NaN

(define-fun is_finite ((f Float32)) Bool
  (or (fp.isZero f)
      (fp.isNormal f)
      (fp.isSubnormal f)))

(declare-const a Float32)
(declare-const b Float32)
(assert (is_finite a))
(assert (is_finite b))

(assert (not (or (fp.leq a b)
                 (fp.leq b a))))
(check-sat)
(exit)
