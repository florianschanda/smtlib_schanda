(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 340282366920938463463374607431768211455) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111))
;; x should be 340282366920938463463374607431768211455
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
