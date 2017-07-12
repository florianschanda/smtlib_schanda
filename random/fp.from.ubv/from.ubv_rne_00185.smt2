(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 90) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01011010))
;; x should be 90
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.geq r (fp #b0 #b10000000101 #b0110100000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
