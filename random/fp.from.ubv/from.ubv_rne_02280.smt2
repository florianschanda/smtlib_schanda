(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 255211775190703847597530955573826158592) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
;; x should be 255211775190703847597530955573826158592
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x47E8000000000000))))
(check-sat)
(exit)
