(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 49151) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1011111111111111))
;; x should be 49151
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r (fp #b0 #b10001110 #b01111111111111100000000)))
(check-sat)
(exit)
