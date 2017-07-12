(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 224) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11100000))
;; x should be 224
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r (fp #b0 #b10000000110 #b1100000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
