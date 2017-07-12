(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 64) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b01000000))
;; x should be 64
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r (fp #b0 #b10101 #b0000000000))))
(check-sat)
(exit)
