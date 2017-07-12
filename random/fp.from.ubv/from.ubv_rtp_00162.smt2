(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 65) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01000001))
;; x should be 65
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10101 #b0000010000))))
(check-sat)
(exit)
