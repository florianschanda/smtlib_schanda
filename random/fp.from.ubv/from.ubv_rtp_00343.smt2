(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 191) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10111111))
;; x should be 191
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r ((_ to_fp 8 24) #x433F0000)))
(check-sat)
(exit)
