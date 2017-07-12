(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 65257) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1111111011101001))
;; x should be 65257
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r (fp #b0 #b10001110 #b11111101110100100000000)))
(check-sat)
(exit)
