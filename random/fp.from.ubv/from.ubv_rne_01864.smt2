(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 18446744073709551614) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1111111111111111111111111111111111111111111111111111111111111110))
;; x should be 18446744073709551614
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.geq r (fp #b0 #b10000111111 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
