(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 5) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00000101))
;; x should be 5
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10001 #b0100000000))))
(check-sat)
(exit)
