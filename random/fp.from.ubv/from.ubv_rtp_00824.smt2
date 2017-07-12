(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 48623) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011110111101111))
;; x should be 48623
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b0111110000))))
(check-sat)
(exit)
