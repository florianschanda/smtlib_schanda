(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 188) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b10111100))
;; x should be 188
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r (fp #b0 #b10110 #b0111100000)))
(check-sat)
(exit)
