(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 207) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11001111))
;; x should be 207
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000110 #b10011110000000000000000))))
(check-sat)
(exit)
