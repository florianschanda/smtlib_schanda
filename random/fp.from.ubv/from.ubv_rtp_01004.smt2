(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 464531429) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00011011101100000010111111100101))
;; x should be 464531429
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r (fp #b0 #b10011011 #b10111011000000110000000)))
(check-sat)
(exit)
