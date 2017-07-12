(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 127) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01111111))
;; x should be 127
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10101 #b1111110000))))
(check-sat)
(exit)
