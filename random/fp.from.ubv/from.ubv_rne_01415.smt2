(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4257462955) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11111101110000111011101010101011))
;; x should be 4257462955
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.geq r (fp #b0 #b10000011110 #b1111101110000111011101010101011000000000000000000000)))
(check-sat)
(exit)
