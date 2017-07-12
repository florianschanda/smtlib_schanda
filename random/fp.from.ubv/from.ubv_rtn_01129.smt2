(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2147483645) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01111111111111111111111111111101))
;; x should be 2147483645
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4EFFFFFF)))
(check-sat)
(exit)
