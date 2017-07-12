(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 9223372036854775806) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0111111111111111111111111111111111111111111111111111111111111110))
;; x should be 9223372036854775806
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r (fp #b0 #b10000111101 #b1111111111111111111111111111111111111111111111111111)))
(check-sat)
(exit)
