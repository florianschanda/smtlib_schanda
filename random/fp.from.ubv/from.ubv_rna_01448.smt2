(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 830430285371548272) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0000101110000110010001111111000111011010010011000010001001110000))
;; x should be 830430285371548272
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r (fp #b0 #b10000111010 #b0111000011001000111111100011101101001001100001000101))))
(check-sat)
(exit)
