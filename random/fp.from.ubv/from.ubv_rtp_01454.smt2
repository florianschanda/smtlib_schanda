(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3431073803900017232) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0010111110011101100111110111001000101111100110111101101001010000))
;; x should be 3431073803900017232
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.geq r ((_ to_fp 11 53) #x43C7CECFB917CDEE)))
(check-sat)
(exit)
