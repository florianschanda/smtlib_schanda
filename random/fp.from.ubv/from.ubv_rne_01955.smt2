(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 45191856948216171259896327401078500217) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00100001111111111010001010010010111001001000001001000000100111101011111010100001100000111000101010111110110001111010101101111001))
;; x should be 45191856948216171259896327401078500217
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b11111100 #b00001111111111010001010)))
(check-sat)
(exit)
