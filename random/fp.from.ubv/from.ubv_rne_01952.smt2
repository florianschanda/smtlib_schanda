(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 45412195541680657020173315558850160945) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00100010001010100001001000011010111011011110100101000111001111100100001000000111000001111010111100111011101111111110100100110001))
;; x should be 45412195541680657020173315558850160945
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r (fp #b0 #b10001111100 #b0001000101010000100100001101011101101111010010100100)))
(check-sat)
(exit)
