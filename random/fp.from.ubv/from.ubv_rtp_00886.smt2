(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 65533) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1111111111111101))
;; x should be 65533
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
