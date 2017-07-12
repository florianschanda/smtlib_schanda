(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 125) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01111101))
;; x should be 125
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r ((_ to_fp 11 53) #x405F400000000000)))
(check-sat)
(exit)
