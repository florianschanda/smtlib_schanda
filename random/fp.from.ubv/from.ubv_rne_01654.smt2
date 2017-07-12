(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 9223372036854775807) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0111111111111111111111111111111111111111111111111111111111111111))
;; x should be 9223372036854775807
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b10111110 #b00000000000000000000000)))
(check-sat)
(exit)
