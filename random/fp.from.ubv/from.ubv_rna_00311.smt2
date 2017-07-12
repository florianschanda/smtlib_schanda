(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 130) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b10000010))
;; x should be 130
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10110 #b0000010000))))
(check-sat)
(exit)
