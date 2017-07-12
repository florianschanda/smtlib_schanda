(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 222) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11011110))
;; x should be 222
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r ((_ to_fp 11 53) #x406BC00000000000)))
(check-sat)
(exit)
