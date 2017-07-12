(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 16226261024835378598) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1110000100101111010000100110111010000010000101000001110110100110))
;; x should be 16226261024835378598
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10111110 #b11000010010111101000011))))
(check-sat)
(exit)
