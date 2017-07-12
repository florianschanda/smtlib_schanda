(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 200) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11001000))
;; x should be 200
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000110 #b10010000000000000000000))))
(check-sat)
(exit)
