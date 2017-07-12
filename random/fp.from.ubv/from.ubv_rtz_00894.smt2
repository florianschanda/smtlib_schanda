(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 49153) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1100000000000001))
;; x should be 49153
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000001110 #b1000000000000010000000000000000000000000000000000000))))
(check-sat)
(exit)
