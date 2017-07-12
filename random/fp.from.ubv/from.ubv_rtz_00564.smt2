(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 2) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0000000000000010))
;; x should be 2
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10000 #b0000000000))))
(check-sat)
(exit)
