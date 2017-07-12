(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 19652) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100110011000100))
;; x should be 19652
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000001101 #b0011001100010000000000000000000000000000000000000000))))
(check-sat)
(exit)
