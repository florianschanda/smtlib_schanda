(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 61) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00111101))
;; x should be 61
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r (fp #b0 #b10000000100 #b1110100000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
