(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10100111 #b10001100000010010001001)))
(declare-const result Bool)
(assert (= result (fp.isPositive x)))
(assert (not result))
(check-sat)
(exit)
