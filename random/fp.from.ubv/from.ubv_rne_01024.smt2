(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1073741822) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00111111111111111111111111111110))
;; x should be 1073741822
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4E800000)))
(check-sat)
(exit)
