(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 112315719049917267674498264560582932981) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01010100011111110011100001111100110011011110010001010011001100100000010111111000110111110110101000011100110111100011100111110101))
;; x should be 112315719049917267674498264560582932981
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r ((_ to_fp 8 24) #x7EA8FE71)))
(check-sat)
(exit)
