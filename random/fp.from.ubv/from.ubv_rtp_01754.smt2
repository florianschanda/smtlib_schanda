(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 11844322451080299842) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1010010001011111011111001000001111101101110100110100010101000010))
;; x should be 11844322451080299842
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10111110 #b01001000101111101111101))))
(check-sat)
(exit)
