(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 15671) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0011110100110111))
;; x should be 15671
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10000001100 #b1110100110111000000000000000000000000000000000000000))))
(check-sat)
(exit)
