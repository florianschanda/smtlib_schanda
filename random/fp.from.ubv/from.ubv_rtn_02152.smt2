(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 170141183460469231731687303715884105727) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
;; x should be 170141183460469231731687303715884105727
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x7EFFFFFF))))
(check-sat)
(exit)
