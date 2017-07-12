(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 32767) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0111111111111111))
;; x should be 32767
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r ((_ to_fp 11 53) #x40DFFFC000000000)))
(check-sat)
(exit)
