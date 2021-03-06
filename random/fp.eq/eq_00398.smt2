(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b10000011110100111100011)))
(declare-const y Float32)
(assert (= y (fp #b0 #b10111011 #b11101000101001111111000)))
(declare-const result Bool)
(assert (= result (fp.eq x y)))
(assert (not result))
(check-sat)
(exit)
