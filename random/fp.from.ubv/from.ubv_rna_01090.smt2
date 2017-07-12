(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2147483644) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01111111111111111111111111111100))
;; x should be 2147483644
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b10011110 #b00000000000000000000000)))
(check-sat)
(exit)
