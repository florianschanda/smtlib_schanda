(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 190894533938349939029655014079560037336) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10001111100111001111001100101101100000100111010100001000011110000101011111111110101111011001100100010111010000100011001111011000))
;; x should be 190894533938349939029655014079560037336
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.leq r (fp #b0 #b11111110 #b00011111001110011110011))))
(check-sat)
(exit)
