(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD4B9D565)))
(declare-const result Float32)
(assert (= result (fp.roundToIntegral RNA x)))
(assert (not (= result ((_ to_fp 8 24) #xD4B9D565))))
(check-sat)
(exit)
