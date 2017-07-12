(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 46367) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1011010100011111))
;; x should be 46367
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10000001110 #b0110101000111110000000000000000000000000000000000000))))
(check-sat)
(exit)
