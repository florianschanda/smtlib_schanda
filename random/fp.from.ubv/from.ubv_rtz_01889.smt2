(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 17350302941923175438) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111000011001000101010001001100110001110101111101110110000001110))
;; x should be 17350302941923175438
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
