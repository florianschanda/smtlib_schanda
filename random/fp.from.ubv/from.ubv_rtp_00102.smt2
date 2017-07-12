(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00000011))
;; x should be 3
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r (fp #b0 #b10000000 #b10000000000000000000000)))
(check-sat)
(exit)
