(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 9223372036854775805) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0111111111111111111111111111111111111111111111111111111111111101))
;; x should be 9223372036854775805
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10000111101 #b1111111111111111111111111111111111111111111111111111))))
(check-sat)
(exit)
