(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 252) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11111100))
;; x should be 252
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x437C0000))))
(check-sat)
(exit)
