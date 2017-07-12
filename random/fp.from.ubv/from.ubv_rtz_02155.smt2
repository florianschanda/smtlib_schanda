(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 170141183460469231731687303715884105727) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
;; x should be 170141183460469231731687303715884105727
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
