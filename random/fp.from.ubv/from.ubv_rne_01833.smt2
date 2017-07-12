(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 13835058055282163713) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1100000000000000000000000000000000000000000000000000000000000001))
;; x should be 13835058055282163713
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.eq r (_ +oo 5 11)))
(check-sat)
(exit)
