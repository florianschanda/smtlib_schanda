(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10001111111110111010011)))
(declare-const result Float32)
(assert (= result (fp.abs x)))
(assert (= result (fp #b0 #b00000000 #b10001111111110111010011)))
(check-sat)
(exit)
