(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 314026113535349812842070806097230564310) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11101100001111110011101011000010111111000000100101000101111100101110111101110010011001001000111101111000110001000000101111010110))
;; x should be 314026113535349812842070806097230564310
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10001111110 #b1101100001111110011101011000010111111000000100101001)))
(check-sat)
(exit)
