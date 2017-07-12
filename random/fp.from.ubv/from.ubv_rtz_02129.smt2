(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 163976161240963218230256010445294312082) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01111011010111001010100011101111110111000000000111111101010100001001000101101111110000001010110100011101101001101001101010010010))
;; x should be 163976161240963218230256010445294312082
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.eq r ((_ to_fp 11 53) #x47DED72A3BF7007F)))
(check-sat)
(exit)
