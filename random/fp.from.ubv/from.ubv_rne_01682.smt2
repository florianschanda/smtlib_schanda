(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 12727063580960848576) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1011000010011111100111001110010101100000111110110111101011000000))
;; x should be 12727063580960848576
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10111110 #b01100001001111110011101))))
(check-sat)
(exit)
