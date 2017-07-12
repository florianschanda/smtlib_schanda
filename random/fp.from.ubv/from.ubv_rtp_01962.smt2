(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;; x should be 1
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
