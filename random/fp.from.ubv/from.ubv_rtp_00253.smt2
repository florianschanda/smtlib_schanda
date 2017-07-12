(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 188) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10111100))
;; x should be 188
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x433C0000))))
(check-sat)
(exit)
