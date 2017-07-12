(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1681905434) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01100100001111111101011100011010))
;; x should be 1681905434
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r (fp #b0 #b10000011101 #b1001000011111111010111000110100000000000000000000000))))
(check-sat)
(exit)
