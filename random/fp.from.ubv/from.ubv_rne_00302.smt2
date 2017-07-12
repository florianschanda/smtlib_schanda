(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 142) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10001110))
;; x should be 142
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r ((_ to_fp 8 24) #x430E0000)))
(check-sat)
(exit)
