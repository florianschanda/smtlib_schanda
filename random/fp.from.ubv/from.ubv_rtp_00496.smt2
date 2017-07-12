(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 16380) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0011111111111100))
;; x should be 16380
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x467FF000))))
(check-sat)
(exit)
