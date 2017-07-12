(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 253) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11111101))
;; x should be 253
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r (fp #b0 #b10000000110 #b1111101000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
