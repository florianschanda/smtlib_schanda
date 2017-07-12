(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 26617) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0110011111111001))
;; x should be 26617
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b11101 #b1001111111))))
(check-sat)
(exit)
