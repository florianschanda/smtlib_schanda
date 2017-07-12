(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 46954686018221701490332592519246194157) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00100011010100110010010011000001110111100000001110110110000001011010000110100101011101010001101100100011001001110010010111101101))
;; x should be 46954686018221701490332592519246194157
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x47C1A99260EF01DC))))
(check-sat)
(exit)
