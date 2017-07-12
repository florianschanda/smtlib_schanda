(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 0) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00000000000000000000000000000000))
;; x should be 0
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
