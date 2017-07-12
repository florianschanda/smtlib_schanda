(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 131) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b10000011))
;; x should be 131
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r (fp #b0 #b10110 #b0000011000)))
(check-sat)
(exit)
