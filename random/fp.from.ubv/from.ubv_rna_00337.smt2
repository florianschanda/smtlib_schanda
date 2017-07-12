(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 191) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10111111))
;; x should be 191
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.leq r (fp #b0 #b10110 #b0111111000)))
(check-sat)
(exit)
