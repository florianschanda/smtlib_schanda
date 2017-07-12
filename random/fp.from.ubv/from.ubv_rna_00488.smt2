(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 924) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0000001110011100))
;; x should be 924
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r (fp #b0 #b11000 #b1100111000)))
(check-sat)
(exit)
