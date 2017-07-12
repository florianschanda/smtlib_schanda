(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 36208) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1000110101110000))
;; x should be 36208
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r (fp #b0 #b10001110 #b00011010111000000000000)))
(check-sat)
(exit)
