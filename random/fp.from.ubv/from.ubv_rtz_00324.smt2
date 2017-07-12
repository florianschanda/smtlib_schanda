(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 130) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b10000010))
;; x should be 130
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r ((_ to_fp 5 11) #x5810)))
(check-sat)
(exit)
