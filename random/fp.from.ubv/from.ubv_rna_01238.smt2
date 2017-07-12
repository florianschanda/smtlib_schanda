(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2710370309) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10100001100011001111100000000101))
;; x should be 2710370309
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r (fp #b0 #b10011110 #b01000011000110011111000)))
(check-sat)
(exit)
