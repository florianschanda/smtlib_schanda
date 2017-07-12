(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 1073741825) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01000000000000000000000000000001))
;; x should be 1073741825
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r (fp #b0 #b10011101 #b00000000000000000000000)))
(check-sat)
(exit)
