(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 196822717290036585308975257067286385090) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10010100000100101010110100101110110111110010001111011010100101010111010101000111010000100100110010001000001110110101000111000010))
;; x should be 196822717290036585308975257067286385090
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r ((_ to_fp 8 24) #x7F1412AD)))
(check-sat)
(exit)
