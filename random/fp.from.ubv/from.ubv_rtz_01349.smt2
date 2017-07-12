(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3242800792) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11000001010010010011011010011000))
;; x should be 3242800792
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10011110 #b10000010100100100110110))))
(check-sat)
(exit)
