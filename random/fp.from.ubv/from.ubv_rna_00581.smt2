(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4379) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0001000100011011))
;; x should be 4379
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10001011 #b00010001101100000000000))))
(check-sat)
(exit)
