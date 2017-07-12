(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4294967295) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11111111111111111111111111111111))
;; x should be 4294967295
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r (fp #b0 #b10000011110 #b1111111111111111111111111111111000000000000000000000))))
(check-sat)
(exit)
