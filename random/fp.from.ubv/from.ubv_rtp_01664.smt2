(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 4950540732569660131) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0100010010110011110110101001000100110010111010101010101011100011))
;; x should be 4950540732569660131
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10000111101 #b0001001011001111011010100100010011001011101010101011)))
(check-sat)
(exit)
