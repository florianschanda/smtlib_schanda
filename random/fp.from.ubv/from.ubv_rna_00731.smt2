(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 34056) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1000010100001000))
;; x should be 34056
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7828)))
(check-sat)
(exit)
