(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 125) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01111101))
;; x should be 125
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r ((_ to_fp 8 24) #x42FA0000)))
(check-sat)
(exit)
