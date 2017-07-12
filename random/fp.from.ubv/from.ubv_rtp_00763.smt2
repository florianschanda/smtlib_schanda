(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 49149) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1011111111111101))
;; x should be 49149
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r ((_ to_fp 11 53) #x40E7FFA000000000)))
(check-sat)
(exit)
