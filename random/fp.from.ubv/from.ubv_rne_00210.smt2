(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 67) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b01000011))
;; x should be 67
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r ((_ to_fp 8 24) #x42860000)))
(check-sat)
(exit)
