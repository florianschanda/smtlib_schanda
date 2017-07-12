(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 12384287966313053105) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1010101111011101110101000100101001100100001110111111101110110001))
;; x should be 12384287966313053105
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b10111110 #b01010111101110111010100))))
(check-sat)
(exit)
