(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 67) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b01000011))
;; x should be 67
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x4050C00000000000))))
(check-sat)
(exit)
