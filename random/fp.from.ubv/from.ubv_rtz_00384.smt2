(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 192) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11000000))
;; x should be 192
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10110 #b1000000000))))
(check-sat)
(exit)
