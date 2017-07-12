(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4294967293) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11111111111111111111111111111101))
;; x should be 4294967293
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x41EFFFFFFFA00000))))
(check-sat)
(exit)
