(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 80370355813812494578534361062346355697) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00111100011101101100010001111010001111100101011000110101010101001010100001001010101111000111001111010011011111000111001111110001))
;; x should be 80370355813812494578534361062346355697
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r ((_ to_fp 8 24) #x7E71DB12)))
(check-sat)
(exit)
