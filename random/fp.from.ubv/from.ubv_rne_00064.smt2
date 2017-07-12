(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 62) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00111110))
;; x should be 62
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x42780000))))
(check-sat)
(exit)
