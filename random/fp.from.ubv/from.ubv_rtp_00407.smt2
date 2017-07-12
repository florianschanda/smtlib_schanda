(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 237) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11101101))
;; x should be 237
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10000110 #b11011010000000000000000))))
(check-sat)
(exit)
