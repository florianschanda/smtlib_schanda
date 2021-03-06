(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00011000011110010011011)))
(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b11111110011100001001000)))
(declare-const result Bool)
(assert (= result (= x y)))
(assert (not result))
(check-sat)
(exit)
