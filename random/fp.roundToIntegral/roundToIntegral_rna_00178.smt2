(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8007B25B)))
(declare-const result Float32)
(assert (= result (fp.roundToIntegral RNA x)))
(assert (= result (fp #b1 #b00000000 #b00000000000000000000000)))
(check-sat)
(exit)
