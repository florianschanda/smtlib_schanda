(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 17236857724389053766) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1110111100110101100111101100011010001010001010000101010101000110))
;; x should be 17236857724389053766
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000111110 #b1101111001101011001111011000110100010100010100001011))))
(check-sat)
(exit)
