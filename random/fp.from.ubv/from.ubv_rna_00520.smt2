(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 16381) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0011111111111101))
;; x should be 16381
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r ((_ to_fp 8 24) #x467FF400)))
(check-sat)
(exit)
