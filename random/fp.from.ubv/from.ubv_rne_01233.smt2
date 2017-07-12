(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2147483649) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000000000000000000000000000001))
;; x should be 2147483649
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
