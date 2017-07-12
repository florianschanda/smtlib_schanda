(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4161832740717895603) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011100111000001110011001101001111001101000101001001111110110011))
;; x should be 4161832740717895603
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r (fp #b0 #b10000111100 #b1100111000001110011001101001111001101000101001001111)))
(check-sat)
(exit)
