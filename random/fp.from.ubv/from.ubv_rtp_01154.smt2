(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1161374070) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01000101001110010010100101110110))
;; x should be 1161374070
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r (fp #b0 #b10011101 #b00010100111001001010011)))
(check-sat)
(exit)
