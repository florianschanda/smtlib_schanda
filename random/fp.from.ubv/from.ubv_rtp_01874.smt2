(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 15477140889041417986) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1101011011001001110110011010001100011101111111001011011100000010))
;; x should be 15477140889041417986
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b10101101100100111011010))))
(check-sat)
(exit)
