(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 18446744073709551613) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1111111111111111111111111111111111111111111111111111111111111101))
;; x should be 18446744073709551613
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000111111 #b0000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
