(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 14717723459275150453) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1100110000111111110110111000001000100100100001110101010001110101))
;; x should be 14717723459275150453
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.eq r ((_ to_fp 11 53) #x43E987FB704490EA)))
(check-sat)
(exit)
