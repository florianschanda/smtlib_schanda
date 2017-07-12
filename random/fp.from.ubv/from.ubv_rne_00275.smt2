(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 157) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10011101))
;; x should be 157
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r ((_ to_fp 11 53) #x4063A00000000000)))
(check-sat)
(exit)
