(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2942165291) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10101111010111011110000100101011))
;; x should be 2942165291
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r (fp #b0 #b10011110 #b01011110101110111100010)))
(check-sat)
(exit)
