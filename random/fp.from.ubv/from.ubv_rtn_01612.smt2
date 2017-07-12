(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 9223372036854775805) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0111111111111111111111111111111111111111111111111111111111111101))
;; x should be 9223372036854775805
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
