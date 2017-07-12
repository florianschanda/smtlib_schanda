(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 49148) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1011111111111100))
;; x should be 49148
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10000001110 #b0111111111111000000000000000000000000000000000000000)))
(check-sat)
(exit)
