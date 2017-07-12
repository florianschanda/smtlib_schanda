(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 256907766) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00001111010100000001100111110110))
;; x should be 256907766
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.eq r (fp #b0 #b10000011010 #b1110101000000011001111101100000000000000000000000000)))
(check-sat)
(exit)
