(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 37756) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1001001101111100))
;; x should be 37756
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r (fp #b0 #b10000001110 #b0010011011111000000000000000000000000000000000000000))))
(check-sat)
(exit)
