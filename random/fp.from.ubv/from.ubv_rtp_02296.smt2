(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 340282366920938463463374607431768211452) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100))
;; x should be 340282366920938463463374607431768211452
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r (_ +oo 8 24)))
(check-sat)
(exit)
