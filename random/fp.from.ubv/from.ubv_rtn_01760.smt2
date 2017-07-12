(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 11155939184150827290) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1001101011010001110110111001010011001111001010111101000100011010))
;; x should be 11155939184150827290
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.leq r (fp #b0 #b10000111110 #b0011010110100011101101110010100110011110010101111010))))
(check-sat)
(exit)
