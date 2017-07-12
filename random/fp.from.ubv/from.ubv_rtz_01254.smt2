(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2147483649) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10000000000000000000000000000001))
;; x should be 2147483649
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x41E0000000200000))))
(check-sat)
(exit)
