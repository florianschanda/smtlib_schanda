(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 209900436931725720769027629174632721056) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10011101111010010101101010001010111100101010110100001000110101011101001100110010100011110110100000100101110011111010101010100000))
;; x should be 209900436931725720769027629174632721056
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x47E3BD2B515E55A1)))
(check-sat)
(exit)
