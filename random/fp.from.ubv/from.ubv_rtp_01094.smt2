(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1954733416) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01110100100000101101110101101000))
;; x should be 1954733416
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10000011101 #b1101001000001011011101011010000000000000000000000000))))
(check-sat)
(exit)
