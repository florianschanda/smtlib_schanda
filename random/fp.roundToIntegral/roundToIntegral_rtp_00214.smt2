(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01000001 #b01001000011110011110001)))
(declare-const result Float32)
(assert (= result (fp.roundToIntegral RTP x)))
(assert (not (= result ((_ to_fp 8 24) #x3F800000))))
(check-sat)
(exit)
