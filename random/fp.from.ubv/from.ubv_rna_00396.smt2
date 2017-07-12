(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 193) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11000001))
;; x should be 193
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r (fp #b0 #b10000110 #b10000010000000000000000)))
(check-sat)
(exit)
