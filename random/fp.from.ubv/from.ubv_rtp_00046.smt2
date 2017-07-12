(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 61) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b00111101))
;; x should be 61
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r (fp #b0 #b10000100 #b11101000000000000000000)))
(check-sat)
(exit)
