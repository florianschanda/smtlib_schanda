(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 0) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0000000000000000))
;; x should be 0
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.leq r (fp #b0 #b00000 #b0000000000)))
(check-sat)
(exit)
