(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 176) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10110000))
;; x should be 176
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x43300000))))
(check-sat)
(exit)
