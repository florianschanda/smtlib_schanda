(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1973813390) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01110101101001100000000010001110))
;; x should be 1973813390
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)
