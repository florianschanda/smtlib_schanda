(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 184409345888065604583921164162175715702) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10001010101110111111001010111000011101001010000101000011000101110111100011110110111101101010110100100001100010011100100101110110))
;; x should be 184409345888065604583921164162175715702
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x47E1577E570E9428)))
(check-sat)
(exit)
