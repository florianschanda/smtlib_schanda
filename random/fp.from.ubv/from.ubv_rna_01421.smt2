(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3283170435) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11000011101100010011010010000011))
;; x should be 3283170435
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b10011110 #b10000111011000100110101))))
(check-sat)
(exit)
