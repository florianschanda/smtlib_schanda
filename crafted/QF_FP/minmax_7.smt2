(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)
(declare-const y Float32)

(assert (fp.isZero x))
(assert (fp.isZero y))
(assert (distinct x y))

;; this should be sat as fp.max could return -0
(assert (not (fp.isPositive (fp.max x y))))
(check-sat)
(exit)
