(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 32765) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0111111111111101))
;; x should be 32765
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10001101 #b11111111111101000000000))))
(check-sat)
(exit)
