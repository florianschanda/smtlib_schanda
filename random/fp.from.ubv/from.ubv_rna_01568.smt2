(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 6082438095540467600) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0101010001101001001010010011100011000100111111100011011110010000))
;; x should be 6082438095540467600
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r (fp #b0 #b10111101 #b01010001101001001010010)))
(check-sat)
(exit)
