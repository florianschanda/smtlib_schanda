(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b01100011 #b00111101110111110110011)))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00114CFA)))
(declare-const result Bool)
(assert (= result (fp.geq x y)))
(assert (not result))
(check-sat)
(exit)
