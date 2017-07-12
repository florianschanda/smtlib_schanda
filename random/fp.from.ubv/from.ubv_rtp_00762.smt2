(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 32769) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1000000000000001))
;; x should be 32769
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r ((_ to_fp 11 53) #x40E0002000000000)))
(check-sat)
(exit)
