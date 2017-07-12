(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 67) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b01000011))
;; x should be 67
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10000101 #b00001100000000000000000))))
(check-sat)
(exit)
