(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 83) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01010011))
;; x should be 83
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.geq r (fp #b0 #b10101 #b0100110000)))
(check-sat)
(exit)
