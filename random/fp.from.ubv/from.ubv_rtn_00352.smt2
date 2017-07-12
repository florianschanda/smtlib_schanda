(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 191) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10111111))
;; x should be 191
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10000000110 #b0111111000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
