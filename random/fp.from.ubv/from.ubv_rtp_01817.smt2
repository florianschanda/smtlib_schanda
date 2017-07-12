(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 16302710483648501208) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1110001000111110110111001100111100110101111001111101010111011000))
;; x should be 16302710483648501208
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b11000100011111011011101))))
(check-sat)
(exit)
