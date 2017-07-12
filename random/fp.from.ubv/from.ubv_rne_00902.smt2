(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 53374) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1101000001111110))
;; x should be 53374
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b10001110 #b10100000111111000000000)))
(check-sat)
(exit)
