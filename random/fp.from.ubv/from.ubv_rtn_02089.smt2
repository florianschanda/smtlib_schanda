(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 170141183460469231731687303715884105725) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101))
;; x should be 170141183460469231731687303715884105725
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.leq r (fp #b0 #b11111101 #b11111111111111111111111))))
(check-sat)
(exit)
