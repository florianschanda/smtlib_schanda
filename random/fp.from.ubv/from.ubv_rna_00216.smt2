(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 67) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01000011))
;; x should be 67
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r (fp #b0 #b10000000101 #b0000110000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
