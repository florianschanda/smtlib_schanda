(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 3221225468) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10111111111111111111111111111100))
;; x should be 3221225468
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.eq r (_ +oo 5 11)))
(check-sat)
(exit)
