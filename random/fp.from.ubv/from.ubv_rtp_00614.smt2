(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 24748) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0110000010101100))
;; x should be 24748
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x46C15800))))
(check-sat)
(exit)
