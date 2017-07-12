(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 3545534894) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11010011010101001001000110101110))
;; x should be 3545534894
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b10011110 #b10100110101010010010010))))
(check-sat)
(exit)
