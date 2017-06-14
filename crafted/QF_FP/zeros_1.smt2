(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

(declare-const x Float32)

(assert (fp.geq x (_ +zero 8 24)))

;; x >= 0 does not imply that its positive (-0)
(assert (not (fp.isPositive x)))
(check-sat)
(exit)
