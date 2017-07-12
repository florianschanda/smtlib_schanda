(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 48631) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1011110111110111))
;; x should be 48631
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b11110 #b0111101111))))
(check-sat)
(exit)
