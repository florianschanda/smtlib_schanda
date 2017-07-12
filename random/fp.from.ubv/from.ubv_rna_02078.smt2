(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 95561654215332535138749187002566442049) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01000111111001001000000101010000110001111001001101100010101110010001110111010000000101101001010110100110100101111111110001000001))
;; x should be 95561654215332535138749187002566442049
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.eq r ((_ to_fp 11 53) #x47D1F9205431E4D9)))
(check-sat)
(exit)
