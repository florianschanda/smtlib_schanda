(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4294967295) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11111111111111111111111111111111))
;; x should be 4294967295
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r (fp #b0 #b10011111 #b00000000000000000000000)))
(check-sat)
(exit)
