(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 170141183460469231731687303715884105731) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011))
;; x should be 170141183460469231731687303715884105731
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r (fp #b0 #b10001111110 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
