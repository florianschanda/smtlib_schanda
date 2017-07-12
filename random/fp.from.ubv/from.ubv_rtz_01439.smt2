(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4243043407) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11111100111001111011010001001111))
;; x should be 4243043407
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10011110 #b11111001110011110110100))))
(check-sat)
(exit)
