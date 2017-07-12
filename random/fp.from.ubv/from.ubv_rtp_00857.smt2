(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 52904) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1100111010101000))
;; x should be 52904
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10001110 #b10011101010100000000000))))
(check-sat)
(exit)
