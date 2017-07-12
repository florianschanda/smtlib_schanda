(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 0) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00000000))
;; x should be 0
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
