(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 253) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11111101))
;; x should be 253
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.geq r (fp #b0 #b10000110 #b11111010000000000000000)))
(check-sat)
(exit)
