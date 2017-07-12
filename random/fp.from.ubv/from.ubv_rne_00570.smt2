(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0000000000000011))
;; x should be 3
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10000000000 #b1000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
