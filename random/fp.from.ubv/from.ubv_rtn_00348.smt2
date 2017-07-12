(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 131) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10000011))
;; x should be 131
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.leq r (fp #b0 #b10000110 #b00000110000000000000000))))
(check-sat)
(exit)
