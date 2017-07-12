(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 45857) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011001100100001))
;; x should be 45857
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r (fp #b0 #b11110 #b0110011001)))
(check-sat)
(exit)
