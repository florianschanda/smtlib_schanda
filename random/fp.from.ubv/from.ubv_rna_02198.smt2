(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 235861267841319567577870843952538625629) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10110001011100010011101001010100000110000001010001110010100001010001010010010110100000111111011011100001101000001010011001011101))
;; x should be 235861267841319567577870843952538625629
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b11111110 #b01100010111000100111010)))
(check-sat)
(exit)
