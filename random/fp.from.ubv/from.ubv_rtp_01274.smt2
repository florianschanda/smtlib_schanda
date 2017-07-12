(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2185130790) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10000010001111100111001100100110))
;; x should be 2185130790
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000011110 #b0000010001111100111001100100110000000000000000000000))))
(check-sat)
(exit)
