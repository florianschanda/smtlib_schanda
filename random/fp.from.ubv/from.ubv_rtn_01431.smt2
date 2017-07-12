(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3221225475) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11000000000000000000000000000011))
;; x should be 3221225475
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x41E8000000600000))))
(check-sat)
(exit)
