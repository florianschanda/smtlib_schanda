(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 4294967293) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11111111111111111111111111111101))
;; x should be 4294967293
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r ((_ to_fp 8 24) #x4F800000)))
(check-sat)
(exit)
