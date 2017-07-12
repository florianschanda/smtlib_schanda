(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2793909178699263000) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0010011011000101111101011001100001100011000100101010110000011000))
;; x should be 2793909178699263000
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r ((_ to_fp 8 24) #x5E1B17D7)))
(check-sat)
(exit)
