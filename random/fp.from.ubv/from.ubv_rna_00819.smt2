(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 32771) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1000000000000011))
;; x should be 32771
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r ((_ to_fp 8 24) #x47000300)))
(check-sat)
(exit)
