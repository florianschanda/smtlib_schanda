(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 49155) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1100000000000011))
;; x should be 49155
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r ((_ to_fp 8 24) #x47400300)))
(check-sat)
(exit)
