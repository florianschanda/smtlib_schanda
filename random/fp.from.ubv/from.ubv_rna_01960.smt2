(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 85070591730234615865843651857942052861) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111101))
;; x should be 85070591730234615865843651857942052861
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r (fp #b0 #b10001111101 #b0000000000000000000000000000000000000000000000000000)))
(check-sat)
(exit)
