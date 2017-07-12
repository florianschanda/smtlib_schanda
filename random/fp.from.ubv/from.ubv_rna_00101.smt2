(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 23) -> float
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00010111))
;; x should be 23
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x4037000000000000)))
(check-sat)
(exit)
