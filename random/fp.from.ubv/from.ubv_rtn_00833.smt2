(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 46911) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011011100111111))
;; x should be 46911
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10000001110 #b0110111001111110000000000000000000000000000000000000))))
(check-sat)
(exit)
