(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 65533) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1111111111111101))
;; x should be 65533
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)
