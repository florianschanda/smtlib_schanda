(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1073741822) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00111111111111111111111111111110))
;; x should be 1073741822
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)
