(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2739371000) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10100011010001110111101111111000))
;; x should be 2739371000
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.eq r (fp #b0 #b10000011110 #b0100011010001110111101111111000000000000000000000000)))
(check-sat)
(exit)
