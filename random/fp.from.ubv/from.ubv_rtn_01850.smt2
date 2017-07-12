(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 14629931851064498565) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1100101100000111111101011000000101111110110111110101100110000101))
;; x should be 14629931851064498565
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x43E960FEB02FDBEB)))
(check-sat)
(exit)
