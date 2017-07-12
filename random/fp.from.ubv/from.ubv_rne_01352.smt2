(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3686217549) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11011011101101110011011101001101))
;; x should be 3686217549
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r (fp #b0 #b10000011110 #b1011011101101110011011101001101000000000000000000000)))
(check-sat)
(exit)
