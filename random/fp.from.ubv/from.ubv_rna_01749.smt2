(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 9223372036854775810) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1000000000000000000000000000000000000000000000000000000000000010))
;; x should be 9223372036854775810
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
