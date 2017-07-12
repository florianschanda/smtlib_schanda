(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 17290345355028092736) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1110111111110011101001010111111000000010010001100101011101000000))
;; x should be 17290345355028092736
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.leq r (fp #b0 #b10111110 #b11011111111001110100101))))
(check-sat)
(exit)
