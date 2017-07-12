(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 15459104075294228581) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1101011010001001110001010100000000101001101101001100000001100101))
;; x should be 15459104075294228581
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
