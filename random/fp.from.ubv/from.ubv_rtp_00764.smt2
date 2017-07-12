(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 34081) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b1000010100100001))
;; x should be 34081
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r (fp #b0 #b10000001110 #b0000101001000010000000000000000000000000000000000000)))
(check-sat)
(exit)
