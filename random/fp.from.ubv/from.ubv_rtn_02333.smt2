(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 328098160259629238825687619905888887953) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11110110110101010110100000111011010000101001100110001110001011000100001101000011110110111100101111111110000000101010010010010001))
;; x should be 328098160259629238825687619905888887953
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7F76D568)))
(check-sat)
(exit)
