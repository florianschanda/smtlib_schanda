(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 60742) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1110110101000110))
;; x should be 60742
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r (fp #b0 #b10001110 #b11011010100011000000000)))
(check-sat)
(exit)
