(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3221225469) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10111111111111111111111111111101))
;; x should be 3221225469
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41E7FFFFFFA00000)))
(check-sat)
(exit)
