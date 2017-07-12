(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 250375533733946582405010889705244733946) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10111100010111001001001011100010111111000010000100101101101100001000001111100010010010001010111101111111110001100011000111111010))
;; x should be 250375533733946582405010889705244733946
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11111110 #b01111000101110010010010))))
(check-sat)
(exit)
