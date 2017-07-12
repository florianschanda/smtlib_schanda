(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 127) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01111111))
;; x should be 127
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r (fp #b0 #b10101 #b1111110000)))
(check-sat)
(exit)
