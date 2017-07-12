(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 1073741824) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01000000000000000000000000000000))
;; x should be 1073741824
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r (fp #b0 #b10000011101 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
