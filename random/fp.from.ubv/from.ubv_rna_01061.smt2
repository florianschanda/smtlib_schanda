(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 946564359) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b00111000011010110110110100000111))
;; x should be 946564359
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)
