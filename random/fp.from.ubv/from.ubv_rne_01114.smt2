(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2147483645) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01111111111111111111111111111101))
;; x should be 2147483645
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10011110 #b00000000000000000000000))))
(check-sat)
(exit)
