(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1073741825) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01000000000000000000000000000001))
;; x should be 1073741825
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r (_ +oo 5 11))))
(check-sat)
(exit)
