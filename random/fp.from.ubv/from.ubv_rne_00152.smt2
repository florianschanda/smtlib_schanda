(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 81) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01010001))
;; x should be 81
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.geq r ((_ to_fp 8 24) #x42A20000)))
(check-sat)
(exit)
