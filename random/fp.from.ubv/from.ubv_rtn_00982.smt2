(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1073741820) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00111111111111111111111111111100))
;; x should be 1073741820
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r (fp #b0 #b10000011100 #b1111111111111111111111111110000000000000000000000000)))
(check-sat)
(exit)
