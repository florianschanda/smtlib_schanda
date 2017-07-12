(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 49149) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1011111111111101))
;; x should be 49149
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r (fp #b0 #b10000001110 #b0111111111111010000000000000000000000000000000000000)))
(check-sat)
(exit)
