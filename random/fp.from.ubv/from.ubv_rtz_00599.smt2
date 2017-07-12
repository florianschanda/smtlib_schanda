(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4127) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0001000000011111))
;; x should be 4127
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r (fp #b0 #b10001011 #b00000001111100000000000)))
(check-sat)
(exit)
