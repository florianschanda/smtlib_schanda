(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 154846131126444111543192422744135445358) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01110100011111100100011110110010101110011101111001111100010001010010000001011010010100101111101100011111011000100010101101101110))
;; x should be 154846131126444111543192422744135445358
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b11111101 #b11010001111110010001111))))
(check-sat)
(exit)
