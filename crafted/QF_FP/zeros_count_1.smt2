(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

; there are two zeros

(declare-const a Float32)
(declare-const b Float32)

(assert (fp.isZero a))
(assert (fp.isZero b))

(assert (distinct a b))
(check-sat)
(exit)
