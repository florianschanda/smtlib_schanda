(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 28414) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0110111011111110))
;; x should be 28414
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r (fp #b0 #b10000001101 #b1011101111111000000000000000000000000000000000000000))))
(check-sat)
(exit)
