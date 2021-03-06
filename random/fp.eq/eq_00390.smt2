(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11010011010110000011110)))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x803AFBA8)))
(declare-const result Bool)
(assert (= result (fp.eq x y)))
(assert (not (not result)))
(check-sat)
(exit)
