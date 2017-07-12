(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4066375905787032529) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011100001101110101010110101011101111011101001001011001111010001))
;; x should be 4066375905787032529
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000111100 #b1100001101110101010110101011101111011101001001011010))))
(check-sat)
(exit)
