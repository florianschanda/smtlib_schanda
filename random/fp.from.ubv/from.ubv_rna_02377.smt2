(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 340282366920938463463374607431768211455) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
;; x should be 340282366920938463463374607431768211455
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
