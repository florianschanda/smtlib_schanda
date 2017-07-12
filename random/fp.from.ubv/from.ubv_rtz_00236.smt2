(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 91) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01011011))
;; x should be 91
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000000101 #b0110110000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
