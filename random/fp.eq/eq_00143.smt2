(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F800000)))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x5AD52C0E)))
(declare-const result Bool)
(assert (= result (fp.eq x y)))
(assert (not (not result)))
(check-sat)
(exit)
