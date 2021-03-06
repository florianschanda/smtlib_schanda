(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11011001 #b01100111000111010000110)))
(declare-const result Bool)
(assert (= result (fp.isInfinite x)))
(assert (not result))
(check-sat)
(exit)
