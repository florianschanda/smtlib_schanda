(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2056148979071363629) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0001110010001000111010001001101000111110110101001010101000101101))
;; x should be 2056148979071363629
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
