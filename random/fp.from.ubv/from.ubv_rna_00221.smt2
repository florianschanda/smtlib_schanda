(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 75) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01001011))
;; x should be 75
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x4052C00000000000)))
(check-sat)
(exit)
