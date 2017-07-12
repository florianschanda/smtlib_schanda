(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 9223372036854775806) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0111111111111111111111111111111111111111111111111111111111111110))
;; x should be 9223372036854775806
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r (fp #b0 #b10000111110 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
