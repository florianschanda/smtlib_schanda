(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2494873872) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10010100101101001100000100010000))
;; x should be 2494873872
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
