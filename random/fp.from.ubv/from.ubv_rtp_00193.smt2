(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 126) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b01111110))
;; x should be 126
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x57E0))))
(check-sat)
(exit)
