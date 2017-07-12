(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 7919079338513199264) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0110110111100110001110001011001110001000001101101111000010100000))
;; x should be 7919079338513199264
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r (fp #b0 #b10000111101 #b1011011110011000111000101100111000100000110110111101)))
(check-sat)
(exit)
