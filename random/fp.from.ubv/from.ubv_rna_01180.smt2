(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2147483647) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01111111111111111111111111111111))
;; x should be 2147483647
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.eq r (fp #b0 #b10000011101 #b1111111111111111111111111111110000000000000000000000)))
(check-sat)
(exit)
