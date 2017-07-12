(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 9223372036854775809) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000000000000000000000000000000000000000000000000000000000000001))
;; x should be 9223372036854775809
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10000111110 #b0000000000000000000000000000000000000000000000000001)))
(check-sat)
(exit)
