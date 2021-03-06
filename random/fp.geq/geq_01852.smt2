(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b10110111001100001000000)))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8063042E)))
(declare-const result Bool)
(assert (= result (fp.geq x y)))
(assert (not result))
(check-sat)
(exit)
