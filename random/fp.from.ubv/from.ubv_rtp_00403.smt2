(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 253) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11111101))
;; x should be 253
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10110 #b1111101000))))
(check-sat)
(exit)
