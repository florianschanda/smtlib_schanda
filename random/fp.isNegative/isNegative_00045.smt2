(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF7FFFFF)))
(declare-const result Bool)
(assert (= result (fp.isNegative x)))
(assert (not result))
(check-sat)
(exit)
