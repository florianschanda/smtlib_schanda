(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3221225472) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11000000000000000000000000000000))
;; x should be 3221225472
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r (_ +oo 5 11)))
(check-sat)
(exit)
