(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 55451945569303679972386691926811196413) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00101001101101111010011111111111101001100010100111000100010101100001100000110101110010011001100010111000001001111011101111111101))
;; x should be 55451945569303679972386691926811196413
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r (fp #b0 #b10001111100 #b0100110110111101001111111111110100110001010011100010)))
(check-sat)
(exit)
