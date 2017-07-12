(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 32771) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1000000000000011))
;; x should be 32771
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r (fp #b0 #b11110 #b0000000000)))
(check-sat)
(exit)
