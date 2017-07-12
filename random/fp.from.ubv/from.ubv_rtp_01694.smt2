(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 11857142185934410352) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1010010010001101000001111111111100001011111010110101001001110000))
;; x should be 11857142185934410352
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r ((_ to_fp 11 53) #x43E491A0FFE17D6B)))
(check-sat)
(exit)
