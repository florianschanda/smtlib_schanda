(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 300245230683129696296095475280757019034) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11100001111000010010000011000111011100001001010001010010011100110110100010101010100100011111011001111001111110100101000110011010))
;; x should be 300245230683129696296095475280757019034
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
