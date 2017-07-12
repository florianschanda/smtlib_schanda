(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 20299) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0100111101001011))
;; x should be 20299
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000001101 #b0011110100101100000000000000000000000000000000000000))))
(check-sat)
(exit)
