(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 1) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0000000000000001))
;; x should be 1
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r ((_ to_fp 5 11) #x3C00)))
(check-sat)
(exit)
