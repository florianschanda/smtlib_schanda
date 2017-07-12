(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 60100) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1110101011000100))
;; x should be 60100
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7B56)))
(check-sat)
(exit)
