(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 5) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00000101))
;; x should be 5
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10000001 #b01000000000000000000000))))
(check-sat)
(exit)
