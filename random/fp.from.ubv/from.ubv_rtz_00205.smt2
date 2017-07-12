(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 126) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01111110))
;; x should be 126
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000101 #b11111000000000000000000))))
(check-sat)
(exit)
