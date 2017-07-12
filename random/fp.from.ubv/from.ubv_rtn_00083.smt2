(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 50) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00110010))
;; x should be 50
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10000000100 #b1001000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
