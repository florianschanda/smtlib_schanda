(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 56252) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1101101110111100))
;; x should be 56252
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.geq r (fp #b0 #b10001110 #b10110111011110000000000)))
(check-sat)
(exit)
