(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 89) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01011001))
;; x should be 89
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x4056400000000000))))
(check-sat)
(exit)
