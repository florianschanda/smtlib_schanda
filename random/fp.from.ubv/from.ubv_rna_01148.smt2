(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1341259906) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01001111111100100000000010000010))
;; x should be 1341259906
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x41D3FC8020800000))))
(check-sat)
(exit)
