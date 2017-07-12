(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 255211775190703847597530955573826158592) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
;; x should be 255211775190703847597530955573826158592
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11111110 #b10000000000000000000000))))
(check-sat)
(exit)
