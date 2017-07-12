(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 195) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11000011))
;; x should be 195
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10000110 #b10000110000000000000000))))
(check-sat)
(exit)
