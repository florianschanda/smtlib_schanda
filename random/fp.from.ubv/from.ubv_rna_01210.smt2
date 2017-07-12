(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3221225468) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10111111111111111111111111111100))
;; x should be 3221225468
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x41E7FFFFFF800000)))
(check-sat)
(exit)
