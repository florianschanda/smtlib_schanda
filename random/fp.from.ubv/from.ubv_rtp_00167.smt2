(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 97) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01100001))
;; x should be 97
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10101 #b1000010000))))
(check-sat)
(exit)
