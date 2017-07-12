(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 32766) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0111111111111110))
;; x should be 32766
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b0000000000))))
(check-sat)
(exit)
