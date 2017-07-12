(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 492642976) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00011101010111010010001010100000))
;; x should be 492642976
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10011011 #b11010101110100100010101))))
(check-sat)
(exit)
