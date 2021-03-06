(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01001010010110100010101)))
(declare-const result Float32)
(assert (= result (fp.roundToIntegral RNA x)))
(assert (not (= result ((_ to_fp 8 24) #x4AA52D16))))
(check-sat)
(exit)
