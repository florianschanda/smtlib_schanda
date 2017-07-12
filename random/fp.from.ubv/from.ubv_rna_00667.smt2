(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 32766) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0111111111111110))
;; x should be 32766
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b10001101 #b11111111111110000000000)))
(check-sat)
(exit)
