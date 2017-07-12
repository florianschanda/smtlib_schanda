(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 3) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00000000000000000000000000000011))
;; x should be 3
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10000000 #b10000000000000000000000))))
(check-sat)
(exit)
