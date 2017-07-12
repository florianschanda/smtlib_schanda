(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 56871) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1101111000100111))
;; x should be 56871
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7AF1)))
(check-sat)
(exit)
