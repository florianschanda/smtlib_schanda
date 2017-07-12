(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 29312) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0111001010000000))
;; x should be 29312
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10001101 #b11001010000000000000000))))
(check-sat)
(exit)
