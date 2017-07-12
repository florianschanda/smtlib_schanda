(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 9223372036854775807) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0111111111111111111111111111111111111111111111111111111111111111))
;; x should be 9223372036854775807
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x43DFFFFFFFFFFFFF))))
(check-sat)
(exit)
