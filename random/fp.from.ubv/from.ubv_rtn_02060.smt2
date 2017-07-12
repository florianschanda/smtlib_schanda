(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 119817264071333361106003946571866106420) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01011010001000111111011100110110010101111011100101100111011111010011100100100011101011101011011111100010001100001110101000110100))
;; x should be 119817264071333361106003946571866106420
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
