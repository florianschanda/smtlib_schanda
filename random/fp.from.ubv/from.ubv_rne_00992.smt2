(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1005003953) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00111011111001110010010010110001))
;; x should be 1005003953
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r (fp #b0 #b10000011100 #b1101111100111001001001011000100000000000000000000000))))
(check-sat)
(exit)
