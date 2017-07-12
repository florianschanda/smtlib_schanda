(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 10868694232108334339) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1001011011010101010110111101000110111101001001110111110100000011))
;; x should be 10868694232108334339
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10000111110 #b0010110110101010101101111010001101111010010011110000))))
(check-sat)
(exit)
