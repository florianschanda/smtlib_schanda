(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 18446744073709551612) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111111111111111111111111111111111111111111111111111111111111100))
;; x should be 18446744073709551612
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000111110 #b1111111111111111111111111111111111111111111111111111))))
(check-sat)
(exit)
