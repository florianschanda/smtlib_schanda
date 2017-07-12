(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 12237364346998968646) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1010100111010011110110100000100110001001111001110101000101000110))
;; x should be 12237364346998968646
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r (fp #b0 #b10111110 #b01010011101001111011010)))
(check-sat)
(exit)
