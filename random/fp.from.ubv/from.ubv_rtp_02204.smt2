(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 241208344910425863124438779513367360897) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10110101011101110000100110010101000000011010010000001010011100001110011110110100101000001010101000001111110010101111010110000001))
;; x should be 241208344910425863124438779513367360897
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7F35770A)))
(check-sat)
(exit)
