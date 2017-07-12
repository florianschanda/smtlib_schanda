(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 160) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10100000))
;; x should be 160
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10000110 #b01000000000000000000000))))
(check-sat)
(exit)
