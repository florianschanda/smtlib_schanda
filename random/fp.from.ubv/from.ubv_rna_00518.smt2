(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 8961) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0010001100000001))
;; x should be 8961
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.eq r ((_ to_fp 11 53) #x40C1808000000000)))
(check-sat)
(exit)
