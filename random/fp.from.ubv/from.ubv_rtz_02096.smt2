(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 111321911576342589556055825978227851301) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01010011101111111101000111111110111111100010010100001011101111100100001110010110000001100111001000001010110100101000000000100101))
;; x should be 111321911576342589556055825978227851301
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7EA77FA3)))
(check-sat)
(exit)
