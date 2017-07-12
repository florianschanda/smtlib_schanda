(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 13313039562305882925) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1011100011000001011010101111001001000111111101101100101100101101))
;; x should be 13313039562305882925
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r ((_ to_fp 8 24) #x5F38C16A)))
(check-sat)
(exit)
