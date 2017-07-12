(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 245) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b11110101))
;; x should be 245
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r ((_ to_fp 8 24) #x43750000)))
(check-sat)
(exit)
