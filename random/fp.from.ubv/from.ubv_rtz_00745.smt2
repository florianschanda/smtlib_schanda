(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 49148) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011111111111100))
;; x should be 49148
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10001110 #b01111111111110000000000))))
(check-sat)
(exit)
