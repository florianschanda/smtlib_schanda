(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 185) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10111001))
;; x should be 185
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.eq r (fp #b0 #b10000000110 #b0111001000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
