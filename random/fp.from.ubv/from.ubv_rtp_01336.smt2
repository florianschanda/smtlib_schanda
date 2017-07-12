(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4294967292) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11111111111111111111111111111100))
;; x should be 4294967292
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10011111 #b00000000000000000000000))))
(check-sat)
(exit)
