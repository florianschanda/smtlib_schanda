(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 126) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01111110))
;; x should be 126
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r ((_ to_fp 5 11) #x57E0)))
(check-sat)
(exit)
