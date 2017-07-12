(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 166348957089293467584574553229482195732) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01111101001001011010010011001101111100111101011100010110000010111111111110101101011011101011100001100010110101101111101100010100))
;; x should be 166348957089293467584574553229482195732
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.eq r (fp #b0 #b11111101 #b11110100100101101001010)))
(check-sat)
(exit)
