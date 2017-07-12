(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 7801883180115983338) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0110110001000101110110110110101010001001111010000111101111101010))
;; x should be 7801883180115983338
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r (fp #b0 #b10111101 #b10110001000101110110111)))
(check-sat)
(exit)
