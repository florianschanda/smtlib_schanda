(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 167) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10100111))
;; x should be 167
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x5938))))
(check-sat)
(exit)
