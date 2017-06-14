(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const a Float32)
(assert (fp.isNormal a))

; goal: a /= zero
(assert (not (not (fp.isZero a))))
(check-sat)
(exit)
