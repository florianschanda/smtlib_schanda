(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 16381) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0011111111111101))
;; x should be 16381
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r (fp #b0 #b11101 #b0000000000)))
(check-sat)
(exit)
