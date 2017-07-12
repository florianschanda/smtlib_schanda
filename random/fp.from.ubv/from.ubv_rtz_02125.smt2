(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 170141183460469231731687303715884105726) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110))
;; x should be 170141183460469231731687303715884105726
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
