(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 47) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00101111))
;; x should be 47
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.leq r ((_ to_fp 11 53) #x4047800000000000)))
(check-sat)
(exit)
