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
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r ((_ to_fp 11 53) #x47DFFFFFFFFFFFFF)))
(check-sat)
(exit)
