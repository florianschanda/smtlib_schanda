(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 24) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00011000))
;; x should be 24
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.geq r (fp #b0 #b10011 #b1000000000)))
(check-sat)
(exit)
