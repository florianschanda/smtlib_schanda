(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 36412) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1000111000111100))
;; x should be 36412
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000001110 #b0001110001111000000000000000000000000000000000000000))))
(check-sat)
(exit)
