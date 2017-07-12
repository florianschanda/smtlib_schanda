(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 16382) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0011111111111110))
;; x should be 16382
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b11100 #b1111111111))))
(check-sat)
(exit)
