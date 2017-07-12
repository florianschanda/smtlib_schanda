(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 255211775190703847597530955573826158588) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100))
;; x should be 255211775190703847597530955573826158588
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r (fp #b0 #b10001111110 #b0111111111111111111111111111111111111111111111111111)))
(check-sat)
(exit)
