(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2147483649) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10000000000000000000000000000001))
;; x should be 2147483649
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4F000000)))
(check-sat)
(exit)
