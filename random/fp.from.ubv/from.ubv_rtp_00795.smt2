(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 32770) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1000000000000010))
;; x should be 32770
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10000001110 #b0000000000000100000000000000000000000000000000000000))))
(check-sat)
(exit)
