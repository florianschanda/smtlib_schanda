(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1001108333) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00111011101010111011001101101101))
;; x should be 1001108333
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
