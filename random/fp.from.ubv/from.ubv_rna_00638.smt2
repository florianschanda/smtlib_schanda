(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 20853) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0101000101110101))
;; x should be 20853
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x40D45D4000000000)))
(check-sat)
(exit)
