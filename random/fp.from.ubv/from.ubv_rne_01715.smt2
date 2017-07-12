(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 11468696095034369113) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1001111100101000111111100101010110101101011011101110010001011001))
;; x should be 11468696095034369113
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10111110 #b00111110010100011111110))))
(check-sat)
(exit)
