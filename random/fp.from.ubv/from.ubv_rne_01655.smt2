(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 7614104891503328123) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0110100110101010101111000000111010111100100111101011101101111011))
;; x should be 7614104891503328123
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r (_ +oo 5 11)))
(check-sat)
(exit)
