(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 4193008157) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11111001111011000011101000011101))
;; x should be 4193008157
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r ((_ to_fp 11 53) #x41EF3D8743A00000)))
(check-sat)
(exit)
