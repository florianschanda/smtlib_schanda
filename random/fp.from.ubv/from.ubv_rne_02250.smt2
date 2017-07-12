(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 170141183460469231731687303715884105731) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011))
;; x should be 170141183460469231731687303715884105731
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b11111110 #b00000000000000000000000))))
(check-sat)
(exit)
