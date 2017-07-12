(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3920959474) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11101001101101010001011111110010))
;; x should be 3920959474
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)
