(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 172) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b10101100))
;; x should be 172
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000000110 #b0101100000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
