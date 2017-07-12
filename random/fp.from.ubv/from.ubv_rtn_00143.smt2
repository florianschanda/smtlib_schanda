(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 116) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01110100))
;; x should be 116
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10101 #b1101000000))))
(check-sat)
(exit)
