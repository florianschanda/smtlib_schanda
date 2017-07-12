(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1706328122) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01100101101101001000000000111010))
;; x should be 1706328122
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r (fp #b0 #b10000011101 #b1001011011010010000000001110100000000000000000000000))))
(check-sat)
(exit)
