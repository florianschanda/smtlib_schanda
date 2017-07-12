(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 32771) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1000000000000011))
;; x should be 32771
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b0000000000))))
(check-sat)
(exit)
