(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 340282366920938463463374607431768211453) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101))
;; x should be 340282366920938463463374607431768211453
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r (fp #b0 #b11111110 #b11111111111111111111111)))
(check-sat)
(exit)
