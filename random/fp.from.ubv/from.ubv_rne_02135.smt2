(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 157671262100393990247869423236135676995) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01110110100111100110000101101000110001000000010011100000101101010110001110010011011101001011011101100110100100100110110001000011))
;; x should be 157671262100393990247869423236135676995
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.eq r (fp #b0 #b10001111101 #b1101101001111001100001011010001100010000000100111000)))
(check-sat)
(exit)
