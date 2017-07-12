(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1073741825) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01000000000000000000000000000001))
;; x should be 1073741825
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10000011101 #b0000000000000000000000000000010000000000000000000000))))
(check-sat)
(exit)
