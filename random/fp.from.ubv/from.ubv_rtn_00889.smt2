(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 65533) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1111111111111101))
;; x should be 65533
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r (fp #b0 #b10001110 #b11111111111110100000000)))
(check-sat)
(exit)
