(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01000111001000101111111)))
(declare-const result Float32)
(assert (= result (fp.roundToIntegral RNE x)))
(assert (not (= result ((_ to_fp 8 24) #x4AA39180))))
(check-sat)
(exit)
