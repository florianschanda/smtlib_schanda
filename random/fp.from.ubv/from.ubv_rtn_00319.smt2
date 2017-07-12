(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 190) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10111110))
;; x should be 190
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r (fp #b0 #b10110 #b0111110000))))
(check-sat)
(exit)
