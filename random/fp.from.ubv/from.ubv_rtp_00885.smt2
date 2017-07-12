(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 49153) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100000000000001))
;; x should be 49153
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r ((_ to_fp 11 53) #x40E8002000000000)))
(check-sat)
(exit)
