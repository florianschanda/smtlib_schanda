(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 34088) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1000010100101000))
;; x should be 34088
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r (fp #b0 #b10000001110 #b0000101001010000000000000000000000000000000000000000))))
(check-sat)
(exit)
