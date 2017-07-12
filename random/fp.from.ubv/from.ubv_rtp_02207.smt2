(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 223468008639026989348074449900168298997) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10101000000111100101111101111001010100111010001110100000000101111000101100010111100001100010001000111011001010000100000111110101))
;; x should be 223468008639026989348074449900168298997
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.geq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
