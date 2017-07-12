(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00000010))
;; x should be 2
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.leq r (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
