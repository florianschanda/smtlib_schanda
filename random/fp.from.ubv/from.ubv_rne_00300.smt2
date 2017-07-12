(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 130) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10000010))
;; x should be 130
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r (fp #b0 #b10000000110 #b0000010000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
