(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 4294967294) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11111111111111111111111111111110))
;; x should be 4294967294
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10000011110 #b1111111111111111111111111111110000000000000000000000)))
(check-sat)
(exit)
