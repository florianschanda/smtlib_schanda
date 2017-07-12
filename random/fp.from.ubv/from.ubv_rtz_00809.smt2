(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 39422) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1001100111111110))
;; x should be 39422
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b0011001111))))
(check-sat)
(exit)
