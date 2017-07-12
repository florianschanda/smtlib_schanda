(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 225503618207629008742537500939296562545) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10101001101001100110101011000110001111001111011010100101111011101010101101110000110010110111100001110111000011011101110101110001))
;; x should be 225503618207629008742537500939296562545
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.eq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
