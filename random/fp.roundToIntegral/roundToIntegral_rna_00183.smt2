(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b01011111111011111100111)))
(declare-const result Float32)
(assert (= result (fp.roundToIntegral RNA x)))
(assert (not (= result (_ NaN 8 24))))
(check-sat)
(exit)
