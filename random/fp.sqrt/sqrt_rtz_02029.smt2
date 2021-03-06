(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000001)))
(declare-const result Float32)
(assert (= result (fp.sqrt RTZ x)))
(assert (= result ((_ to_fp 8 24) #x1A3504F3)))
(check-sat)
(exit)
