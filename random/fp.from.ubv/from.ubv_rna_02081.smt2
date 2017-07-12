(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 117530414104336420170835740904806863137) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01011000011010111000100011001101110010000001010000000000111001110101000011001011100100000101010001000010001011101101000100100001))
;; x should be 117530414104336420170835740904806863137
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7EB0D712)))
(check-sat)
(exit)
