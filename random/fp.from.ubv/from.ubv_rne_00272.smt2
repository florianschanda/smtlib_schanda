(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 137) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10001001))
;; x should be 137
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r (fp #b0 #b10000110 #b00010010000000000000000)))
(check-sat)
(exit)
