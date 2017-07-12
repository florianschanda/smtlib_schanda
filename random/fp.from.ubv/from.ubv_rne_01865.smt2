(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 17486910656089606410) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1111001010101101111111001001011110010011001101101100100100001010))
;; x should be 17486910656089606410
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.geq r (fp #b0 #b10000111110 #b1110010101011011111110010010111100100110011011011001)))
(check-sat)
(exit)
