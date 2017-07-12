(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 238066062886610247581622717853140044973) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10110011000110011101101100011101111100000010100111011111010101110010111000010010101111110110111101010100000010001100110010101101))
;; x should be 238066062886610247581622717853140044973
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
