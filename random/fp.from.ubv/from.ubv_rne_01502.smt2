(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2503632196716056358) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0010001010111110101100000011011111010101011111011100111100100110))
;; x should be 2503632196716056358
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.eq r (fp #b0 #b10000111100 #b0001010111110101100000011011111010101011111011101000)))
(check-sat)
(exit)
