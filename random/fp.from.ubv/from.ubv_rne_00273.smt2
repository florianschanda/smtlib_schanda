(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 129) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b10000001))
;; x should be 129
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b10000110 #b00000010000000000000000)))
(check-sat)
(exit)
