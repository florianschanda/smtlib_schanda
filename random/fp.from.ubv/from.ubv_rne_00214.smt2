(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 127) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b01111111))
;; x should be 127
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b10000101 #b11111100000000000000000)))
(check-sat)
(exit)
