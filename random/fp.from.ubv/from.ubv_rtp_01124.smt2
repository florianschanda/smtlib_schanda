(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1526715009) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01011010111111111101001010000001))
;; x should be 1526715009
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10011101 #b01101011111111110100110))))
(check-sat)
(exit)
