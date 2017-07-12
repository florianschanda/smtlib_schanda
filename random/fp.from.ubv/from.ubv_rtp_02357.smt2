(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 292881227292476467951707141133569154842) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11011100010101101101111101100001010110001101000100110110001111110000001000110000111111000010010111110110110100001101111100011010))
;; x should be 292881227292476467951707141133569154842
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r (fp #b0 #b10001111110 #b1011100010101101101111101100001010110001101000100111)))
(check-sat)
(exit)
