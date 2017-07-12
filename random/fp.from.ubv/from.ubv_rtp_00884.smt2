(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 65349) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b1111111101000101))
;; x should be 65349
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFB)))
(check-sat)
(exit)
