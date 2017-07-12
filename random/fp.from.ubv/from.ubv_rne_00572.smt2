(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 5967) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0001011101001111))
;; x should be 5967
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10001011 #b01110100111100000000000))))
(check-sat)
(exit)
