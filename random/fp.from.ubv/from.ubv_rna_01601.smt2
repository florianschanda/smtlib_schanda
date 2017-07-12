(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 5772927018638597773) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0101000000011101100011101000100110000100001101010101111010001101))
;; x should be 5772927018638597773
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b10111101 #b01000000011101100011101))))
(check-sat)
(exit)
