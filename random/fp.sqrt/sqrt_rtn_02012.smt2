(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000001)))
(declare-const result Float32)
(assert (= result (fp.sqrt RTN x)))
(assert (not (= result (fp #b0 #b00110100 #b01101010000010011110011))))
(check-sat)
(exit)
