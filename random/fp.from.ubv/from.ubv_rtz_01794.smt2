(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 9223372036854775811) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1000000000000000000000000000000000000000000000000000000000000011))
;; x should be 9223372036854775811
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10000111110 #b0000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
