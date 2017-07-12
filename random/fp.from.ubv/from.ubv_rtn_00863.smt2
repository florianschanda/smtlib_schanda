(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 55236) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1101011111000100))
;; x should be 55236
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10001110 #b10101111100010000000000))))
(check-sat)
(exit)
