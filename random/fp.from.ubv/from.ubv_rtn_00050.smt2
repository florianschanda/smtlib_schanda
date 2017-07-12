(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 57) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b00111001))
;; x should be 57
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10000000100 #b1100100000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
