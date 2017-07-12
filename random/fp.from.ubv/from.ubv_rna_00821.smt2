(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 46047) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1011001111011111))
;; x should be 46047
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b10001110 #b01100111101111100000000)))
(check-sat)
(exit)
