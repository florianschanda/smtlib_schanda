(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 14284) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0011011111001100))
;; x should be 14284
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r (fp #b0 #b10000001100 #b1011111001100000000000000000000000000000000000000000)))
(check-sat)
(exit)
