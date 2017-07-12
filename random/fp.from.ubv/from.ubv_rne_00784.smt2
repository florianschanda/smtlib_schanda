(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 49150) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011111111111110))
;; x should be 49150
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10000001110 #b0111111111111100000000000000000000000000000000000000))))
(check-sat)
(exit)
