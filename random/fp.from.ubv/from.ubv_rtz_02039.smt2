(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 61355395904265001901720048048678022071) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00101110001010001001111010010010011100111010001101110011000110100101110010010011000010110010001001001101001111101010101110110111))
;; x should be 61355395904265001901720048048678022071
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.eq r (fp #b0 #b10001111100 #b0111000101000100111101001001001110011101000110111001)))
(check-sat)
(exit)
