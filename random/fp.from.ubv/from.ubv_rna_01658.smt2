(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 7824354124412316263) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0110110010010101101100001001111011110110011101010110101001100111))
;; x should be 7824354124412316263
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.leq r (fp #b0 #b10000111101 #b1011001001010110110000100111101111011001110101011011))))
(check-sat)
(exit)
