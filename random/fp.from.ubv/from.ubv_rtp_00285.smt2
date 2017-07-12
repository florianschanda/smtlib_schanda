(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 129) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10000001))
;; x should be 129
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10110 #b0000001000))))
(check-sat)
(exit)
