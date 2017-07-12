(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2147483644) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01111111111111111111111111111100))
;; x should be 2147483644
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000011101 #b1111111111111111111111111111000000000000000000000000))))
(check-sat)
(exit)
