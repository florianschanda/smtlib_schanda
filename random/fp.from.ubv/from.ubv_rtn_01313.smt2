(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2501210459) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10010101000101010111000101011011))
;; x should be 2501210459
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x41E2A2AE2B600000)))
(check-sat)
(exit)
