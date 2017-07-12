(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 190) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10111110))
;; x should be 190
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r (fp #b0 #b10000110 #b01111100000000000000000)))
(check-sat)
(exit)
