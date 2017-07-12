(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 111615035366393562195348500602918184987) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01010011111110000100011000011101010111011101010101000110010001011001000010011000111010101000101110000110010111101010100000011011))
;; x should be 111615035366393562195348500602918184987
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.eq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
