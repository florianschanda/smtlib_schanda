(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 50928810631855906411220610242517908750) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00100110010100001000100000111010100000101000111110110111100100110010000011011000011101001101111101110001111000111011110100001110))
;; x should be 50928810631855906411220610242517908750
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r (fp #b0 #b10001111100 #b0011001010000100010000011101010000010100011111011100)))
(check-sat)
(exit)
