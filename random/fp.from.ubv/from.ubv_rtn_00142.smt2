(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 124) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01111100))
;; x should be 124
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x57C0))))
(check-sat)
(exit)
