(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 130) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10000010))
;; x should be 130
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r (fp #b0 #b10000110 #b00000100000000000000000)))
(check-sat)
(exit)
