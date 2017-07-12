(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 9765) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0010011000100101))
;; x should be 9765
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x46189400))))
(check-sat)
(exit)
