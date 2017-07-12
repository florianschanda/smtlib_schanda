(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1365892113) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01010001011010011101110000010001))
;; x should be 1365892113
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r (fp #b0 #b10011101 #b01000101101001110111000)))
(check-sat)
(exit)
