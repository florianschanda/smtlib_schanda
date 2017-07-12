(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 138) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10001010))
;; x should be 138
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10110 #b0001010000))))
(check-sat)
(exit)
