(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3221225469) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10111111111111111111111111111101))
;; x should be 3221225469
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000011110 #b0111111111111111111111111111101000000000000000000000))))
(check-sat)
(exit)
