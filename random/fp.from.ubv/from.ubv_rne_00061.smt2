(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 62) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00111110))
;; x should be 62
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10000000100 #b1111000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
