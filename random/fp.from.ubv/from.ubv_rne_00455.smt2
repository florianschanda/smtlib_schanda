(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 211) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11010011))
;; x should be 211
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r (fp #b0 #b10000000110 #b1010011000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
