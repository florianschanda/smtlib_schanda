(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 18446744073709551612) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111111111111111111111111111111111111111111111111111111111111100))
;; x should be 18446744073709551612
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)
