(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 9241944034961566257) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000000001000001111110110010001001000101111011001010101000110001))
;; x should be 9241944034961566257
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
