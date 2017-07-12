(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 1073741821) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00111111111111111111111111111101))
;; x should be 1073741821
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r (fp #b0 #b10000011100 #b1111111111111111111111111110100000000000000000000000))))
(check-sat)
(exit)
