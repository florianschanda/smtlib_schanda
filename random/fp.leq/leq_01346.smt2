(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00800000)))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F7FFFFF)))
(declare-const result Bool)
(assert (= result (fp.leq x y)))
(assert result)
(check-sat)
(exit)
