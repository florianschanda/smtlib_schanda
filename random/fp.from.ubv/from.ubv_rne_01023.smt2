(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000000000000000000000000010))
;; x should be 2
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r (fp #b0 #b10000000 #b00000000000000000000000)))
(check-sat)
(exit)
