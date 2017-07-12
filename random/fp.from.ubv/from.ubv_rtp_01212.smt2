(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2147483648) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10000000000000000000000000000000))
;; x should be 2147483648
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10000011110 #b0000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
