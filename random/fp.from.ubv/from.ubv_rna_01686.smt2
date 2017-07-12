(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 9223372036854775808) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000000000000000000000000000000000000000000000000000000000000000))
;; x should be 9223372036854775808
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r (_ +oo 5 11)))
(check-sat)
(exit)
