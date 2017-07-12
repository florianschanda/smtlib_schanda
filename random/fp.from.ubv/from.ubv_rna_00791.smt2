(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 41502) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1010001000011110))
;; x should be 41502
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r (fp #b0 #b10001110 #b01000100001111000000000)))
(check-sat)
(exit)
