(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 337248892618265362120580033674960567707) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11111101101101111100011000101011011100110011011011111110110111001011000001000011010101101000101111011111111010011111110110011011))
;; x should be 337248892618265362120580033674960567707
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7F7DB7C7)))
(check-sat)
(exit)
