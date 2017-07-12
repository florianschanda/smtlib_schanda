(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 170141183460469231731687303715884105724) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100))
;; x should be 170141183460469231731687303715884105724
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r (fp #b0 #b10001111101 #b1111111111111111111111111111111111111111111111111111)))
(check-sat)
(exit)
