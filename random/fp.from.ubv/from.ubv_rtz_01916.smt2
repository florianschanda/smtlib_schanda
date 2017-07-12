(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 17105504183696928735) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1110110101100010111101010110110100011101001101101010111111011111))
;; x should be 17105504183696928735
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000111110 #b1101101011000101111010101101101000111010011011010101))))
(check-sat)
(exit)
