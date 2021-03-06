(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11100001001000011000100)))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7FFD66A8)))
(declare-const result Bool)
(assert (= result (fp.leq x y)))
(assert (not result))
(check-sat)
(exit)
