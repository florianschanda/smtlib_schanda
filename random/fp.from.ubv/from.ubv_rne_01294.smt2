(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3221225471) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10111111111111111111111111111111))
;; x should be 3221225471
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10011110 #b10000000000000000000000))))
(check-sat)
(exit)
