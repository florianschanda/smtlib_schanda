(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 31535) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0111101100101111))
;; x should be 31535
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10000001101 #b1110110010111100000000000000000000000000000000000000))))
(check-sat)
(exit)
