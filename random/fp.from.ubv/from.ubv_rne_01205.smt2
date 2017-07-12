(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2912518968) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10101101100110011000001100111000))
;; x should be 2912518968
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4F2D9983)))
(check-sat)
(exit)
