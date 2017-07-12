(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 18446744073709551615) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1111111111111111111111111111111111111111111111111111111111111111))
;; x should be 18446744073709551615
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r (fp #b0 #b10111111 #b00000000000000000000000)))
(check-sat)
(exit)
