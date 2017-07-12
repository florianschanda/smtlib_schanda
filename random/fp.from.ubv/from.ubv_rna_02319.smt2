(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 255211775190703847597530955573826158593) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;; x should be 255211775190703847597530955573826158593
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.eq r ((_ to_fp 11 53) #x47E8000000000000)))
(check-sat)
(exit)
