(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 255) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11111111))
;; x should be 255
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10110 #b1111111000))))
(check-sat)
(exit)
