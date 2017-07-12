(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16380) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0011111111111100))
;; x should be 16380
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r (fp #b0 #b11101 #b0000000000))))
(check-sat)
(exit)
