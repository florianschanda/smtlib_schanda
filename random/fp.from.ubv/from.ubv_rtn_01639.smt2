(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 9223372036854775806) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0111111111111111111111111111111111111111111111111111111111111110))
;; x should be 9223372036854775806
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r ((_ to_fp 8 24) #x5EFFFFFF)))
(check-sat)
(exit)
