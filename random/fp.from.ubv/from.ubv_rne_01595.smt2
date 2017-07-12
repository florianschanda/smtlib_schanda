(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 5492575701353214453) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0100110000111001100011000111111111011101000110011011000111110101))
;; x should be 5492575701353214453
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b10111101 #b00110000111001100011001)))
(check-sat)
(exit)
