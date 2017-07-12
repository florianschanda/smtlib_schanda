(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 32765) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0111111111111101))
;; x should be 32765
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10000001101 #b1111111111110100000000000000000000000000000000000000))))
(check-sat)
(exit)
