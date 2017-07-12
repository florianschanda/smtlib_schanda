(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 190) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b10111110))
;; x should be 190
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r (fp #b0 #b10000000110 #b0111110000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
