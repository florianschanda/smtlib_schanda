(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
(declare-const y Float32)
(assert (= y (_ +zero 8 24)))
(declare-const result Bool)
(assert (= result (fp.gt x y)))
(assert (not (not result)))
(check-sat)
(exit)
