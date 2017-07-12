(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 193) -> float
(declare-const x (_ BitVec 8))
(assert (= x #b11000001))
;; x should be 193
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.eq r ((_ to_fp 5 11) #x5A08)))
(check-sat)
(exit)
