(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 129) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10000001))
;; x should be 129
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b10000110 #b00000010000000000000000))))
(check-sat)
(exit)
