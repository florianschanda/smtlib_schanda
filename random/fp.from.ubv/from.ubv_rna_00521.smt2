(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2753) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0000101011000001))
;; x should be 2753
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b10001010 #b01011000001000000000000)))
(check-sat)
(exit)
