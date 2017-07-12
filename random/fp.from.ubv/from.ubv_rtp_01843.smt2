(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 18446744073709551613) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1111111111111111111111111111111111111111111111111111111111111101))
;; x should be 18446744073709551613
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x5F800000))))
(check-sat)
(exit)
