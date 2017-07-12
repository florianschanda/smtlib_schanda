(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 65533) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1111111111111101))
;; x should be 65533
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000001110 #b1111111111111010000000000000000000000000000000000000))))
(check-sat)
(exit)
