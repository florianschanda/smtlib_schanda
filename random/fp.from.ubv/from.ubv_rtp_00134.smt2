(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 84) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b01010100))
;; x should be 84
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10101 #b0101000000))))
(check-sat)
(exit)
