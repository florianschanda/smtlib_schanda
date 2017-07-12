(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2017062324) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01111000001110011110110110110100))
;; x should be 2017062324
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000011101 #b1110000011100111101101101101000000000000000000000000))))
(check-sat)
(exit)
