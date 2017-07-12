(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 8596) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0010000110010100))
;; x should be 8596
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11100 #b0000110010))))
(check-sat)
(exit)
