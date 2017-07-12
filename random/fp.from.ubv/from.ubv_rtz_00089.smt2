(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 54) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00110110))
;; x should be 54
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000100 #b10110000000000000000000))))
(check-sat)
(exit)
