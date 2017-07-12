(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 95) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01011111))
;; x should be 95
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10000101 #b01111100000000000000000))))
(check-sat)
(exit)
