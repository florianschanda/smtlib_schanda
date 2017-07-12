(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2147483646) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01111111111111111111111111111110))
;; x should be 2147483646
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r (fp #b0 #b10000011101 #b1111111111111111111111111111100000000000000000000000)))
(check-sat)
(exit)
