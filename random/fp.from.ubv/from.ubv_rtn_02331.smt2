(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 255211775190703847597530955573826158593) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;; x should be 255211775190703847597530955573826158593
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
