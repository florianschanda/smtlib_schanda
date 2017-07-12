(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 25464) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0110001101111000))
;; x should be 25464
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000001101 #b1000110111100000000000000000000000000000000000000000))))
(check-sat)
(exit)
