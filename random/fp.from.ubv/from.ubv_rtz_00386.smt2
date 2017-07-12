(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 220) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11011100))
;; x should be 220
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x5AE0))))
(check-sat)
(exit)
