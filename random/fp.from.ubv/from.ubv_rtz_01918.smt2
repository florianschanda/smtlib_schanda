(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 18446744073709551615) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1111111111111111111111111111111111111111111111111111111111111111))
;; x should be 18446744073709551615
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x43EFFFFFFFFFFFFF))))
(check-sat)
(exit)
