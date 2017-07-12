(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 5732) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0001011001100100))
;; x should be 5732
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b10001011 #b01100110010000000000000)))
(check-sat)
(exit)
