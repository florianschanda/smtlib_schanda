(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 255211775190703847597530955573826158593) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;; x should be 255211775190703847597530955573826158593
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x47E8000000000001))))
(check-sat)
(exit)
