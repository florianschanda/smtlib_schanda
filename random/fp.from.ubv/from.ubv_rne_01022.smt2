(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 671151618) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00101000000000001111011000000010))
;; x should be 671151618
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.geq r (fp #b0 #b10000011100 #b0100000000000111101100000001000000000000000000000000)))
(check-sat)
(exit)
