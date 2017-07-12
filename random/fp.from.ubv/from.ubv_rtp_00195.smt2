(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 66) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01000010))
;; x should be 66
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x42840000))))
(check-sat)
(exit)
