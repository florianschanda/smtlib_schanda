(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 109432341360941108931999554963432018624) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01010010010100111110011011111101110111001111011101001010111011010010001011000101101111111001101101111010000001000001001011000000))
;; x should be 109432341360941108931999554963432018624
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r (fp #b0 #b11111101 #b01001001010011111001110)))
(check-sat)
(exit)
