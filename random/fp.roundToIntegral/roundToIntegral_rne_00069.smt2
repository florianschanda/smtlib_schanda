(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10001101 #b00001101101100000011110)))
(declare-const result Float32)
(assert (= result (fp.roundToIntegral RNE x)))
(assert (not (= result ((_ to_fp 8 24) #xC686D800))))
(check-sat)
(exit)
