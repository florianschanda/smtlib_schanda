(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 49149) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011111111111101))
;; x should be 49149
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r (fp #b0 #b10001110 #b01111111111110100000000)))
(check-sat)
(exit)
