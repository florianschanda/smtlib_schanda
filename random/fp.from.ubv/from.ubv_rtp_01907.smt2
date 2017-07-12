(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 15721046594220787263) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1101101000101100011000001001010101110001111001010000011000111111))
;; x should be 15721046594220787263
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r (fp #b0 #b10111110 #b10110100010110001100001)))
(check-sat)
(exit)
