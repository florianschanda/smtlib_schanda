(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 105964313486117330043177928663442498525) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01001111101101111111110000000100000111111101111110010101101000000010111110011101111000010100011010011000111001011010001111011101))
;; x should be 105964313486117330043177928663442498525
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
