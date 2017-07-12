(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 10106) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0010011101111010))
;; x should be 10106
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10001100 #b00111011110100000000000))))
(check-sat)
(exit)
