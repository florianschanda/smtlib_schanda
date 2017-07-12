(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 126) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01111110))
;; x should be 126
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10101 #b1111100000))))
(check-sat)
(exit)
