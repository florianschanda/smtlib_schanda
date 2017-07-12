(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 9223372036854775805) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0111111111111111111111111111111111111111111111111111111111111101))
;; x should be 9223372036854775805
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
