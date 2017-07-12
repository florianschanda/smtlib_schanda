(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 193) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11000001))
;; x should be 193
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r (fp #b0 #b10000000110 #b1000001000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
