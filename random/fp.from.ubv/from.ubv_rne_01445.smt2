(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 2786740795785013368) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0010011010101100011111011111110100101101110110101110100001111000))
;; x should be 2786740795785013368
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10000111100 #b0011010101100011111011111110100101101110110101110100))))
(check-sat)
(exit)
