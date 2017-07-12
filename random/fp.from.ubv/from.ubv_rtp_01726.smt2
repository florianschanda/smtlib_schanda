(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 13835058055282163709) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1011111111111111111111111111111111111111111111111111111111111101))
;; x should be 13835058055282163709
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r (fp #b0 #b10111110 #b10000000000000000000000)))
(check-sat)
(exit)
