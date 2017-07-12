(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 125) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01111101))
;; x should be 125
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x57D0))))
(check-sat)
(exit)
