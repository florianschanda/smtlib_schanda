(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 103808873273802502768427276190067044897) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01001110000110001101110010011011110110100001011110010011110111110011011100110111010001101010000100011101101011011011001000100001))
;; x should be 103808873273802502768427276190067044897
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7E9C31B9)))
(check-sat)
(exit)
