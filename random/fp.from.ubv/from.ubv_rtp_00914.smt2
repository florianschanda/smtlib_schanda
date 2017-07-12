(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 51658) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1100100111001010))
;; x should be 51658
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000001110 #b1001001110010100000000000000000000000000000000000000))))
(check-sat)
(exit)
