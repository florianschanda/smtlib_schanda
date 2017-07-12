(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 329444964779707227237414253033454917831) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11110111110110001100101011010010001011111001110011011010001011101101100000001101010110000101000101100100101010010101100011000111))
;; x should be 329444964779707227237414253033454917831
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r (fp #b0 #b11111110 #b11101111101100011001011)))
(check-sat)
(exit)
