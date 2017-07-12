(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 23434) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0101101110001010))
;; x should be 23434
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x46B71400))))
(check-sat)
(exit)
