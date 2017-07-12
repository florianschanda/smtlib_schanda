(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 96) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01100000))
;; x should be 96
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10101 #b1000000000))))
(check-sat)
(exit)
