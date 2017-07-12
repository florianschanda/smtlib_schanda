(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 16381) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0011111111111101))
;; x should be 16381
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.eq r (fp #b0 #b10000001100 #b1111111111101000000000000000000000000000000000000000)))
(check-sat)
(exit)
