(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 4963521041968948168) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0100010011100001111110000001011011111101101111000110001111001000))
;; x should be 4963521041968948168
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r (fp #b0 #b10000111101 #b0001001110000111111000000101101111110110111100011001))))
(check-sat)
(exit)
