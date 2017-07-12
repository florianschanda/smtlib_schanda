(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 255211775190703847597530955573826158594) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010))
;; x should be 255211775190703847597530955573826158594
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
