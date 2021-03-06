(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11100010 #b10011010010001000000111)))
(declare-const result Float32)
(assert (= result (fp.roundToIntegral RTN x)))
(assert (= result (fp #b0 #b11100010 #b10011010010001000000111)))
(check-sat)
(exit)
