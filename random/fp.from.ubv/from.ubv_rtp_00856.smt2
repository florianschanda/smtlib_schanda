(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 65532) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1111111111111100))
;; x should be 65532
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x477FFC00))))
(check-sat)
(exit)
