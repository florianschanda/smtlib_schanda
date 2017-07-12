(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0000000000000000000000000000000000000000000000000000000000000010))
;; x should be 2
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r ((_ to_fp 8 24) #x40000000)))
(check-sat)
(exit)
