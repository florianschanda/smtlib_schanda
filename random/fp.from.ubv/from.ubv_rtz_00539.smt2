(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 12009) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0010111011101001))
;; x should be 12009
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r (fp #b0 #b10000001100 #b0111011101001000000000000000000000000000000000000000)))
(check-sat)
(exit)
