(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3221225473) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11000000000000000000000000000001))
;; x should be 3221225473
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
