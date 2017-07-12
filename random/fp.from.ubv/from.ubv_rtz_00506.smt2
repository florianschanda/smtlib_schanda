(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 15596) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0011110011101100))
;; x should be 15596
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000001100 #b1110011101100000000000000000000000000000000000000000))))
(check-sat)
(exit)
