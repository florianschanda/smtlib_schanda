(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 11857903912283228524) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1010010010001111101111001100100001001000010110110100100101101100))
;; x should be 11857903912283228524
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r ((_ to_fp 8 24) #x5F248FBD)))
(check-sat)
(exit)
