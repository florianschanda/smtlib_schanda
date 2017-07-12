(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 9223372036854775804) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0111111111111111111111111111111111111111111111111111111111111100))
;; x should be 9223372036854775804
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r (fp #b0 #b10000111110 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
