(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3221225468) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b10111111111111111111111111111100))
;; x should be 3221225468
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x4F400000))))
(check-sat)
(exit)
