(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 65535) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1111111111111111))
;; x should be 65535
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10001110 #b11111111111111100000000))))
(check-sat)
(exit)
