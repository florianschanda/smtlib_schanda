(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 255) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b11111111))
;; x should be 255
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x437F0000))))
(check-sat)
(exit)
