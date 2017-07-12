(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 84476511093862664848031376018364954484) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00111111100011011001010110010000001011101100001111110101000000100010110010111000011000010101100010011101010110111111011101110100))
;; x should be 84476511093862664848031376018364954484
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b11111100 #b11111100011011001010110)))
(check-sat)
(exit)
