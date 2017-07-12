(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 43) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00101011))
;; x should be 43
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.geq r (fp #b0 #b10100 #b0101100000)))
(check-sat)
(exit)
