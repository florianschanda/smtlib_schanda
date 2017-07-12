(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 254) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11111110))
;; x should be 254
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10000000110 #b1111110000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
