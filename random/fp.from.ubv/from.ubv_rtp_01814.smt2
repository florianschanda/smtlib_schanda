(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 16755566572199231436) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1110100010000111101110110000010111001010010110000011111111001100))
;; x should be 16755566572199231436
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b11010001000011110111100))))
(check-sat)
(exit)
