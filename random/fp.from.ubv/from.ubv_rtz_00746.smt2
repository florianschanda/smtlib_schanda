(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 35100) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1000100100011100))
;; x should be 35100
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000001110 #b0001001000111000000000000000000000000000000000000000))))
(check-sat)
(exit)
