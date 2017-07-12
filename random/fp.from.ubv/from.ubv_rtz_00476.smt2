(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 235) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11101011))
;; x should be 235
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x406D600000000000))))
(check-sat)
(exit)
