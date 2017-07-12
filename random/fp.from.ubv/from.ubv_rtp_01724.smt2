(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 11641797591582905489) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1010000110001111111110010011101010001001010011000001010010010001))
;; x should be 11641797591582905489
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r ((_ to_fp 11 53) #x43E431FF27512983)))
(check-sat)
(exit)
