(set-logic QF_FP)
(set-info :source |SPARK inspired floating point problems by Florian Schanda and Martin Brain|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status sat)

; This is invalid in other languages (like C) since they include NaN

(declare-const a Float32)
(declare-const b Float32)

(assert (not (or (fp.leq a b)
                 (fp.leq b a))))
(check-sat)
(exit)
