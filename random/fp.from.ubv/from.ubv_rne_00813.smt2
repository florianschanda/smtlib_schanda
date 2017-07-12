(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 32771) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1000000000000011))
;; x should be 32771
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r (fp #b0 #b10001110 #b00000000000001100000000)))
(check-sat)
(exit)
