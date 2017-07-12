(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4294967295) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b11111111111111111111111111111111))
;; x should be 4294967295
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x41EFFFFFFFE00000))))
(check-sat)
(exit)
