(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2838670922) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10101001001100101010111001001010))
;; x should be 2838670922
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r (fp #b0 #b10011110 #b01010010011001010101110)))
(check-sat)
(exit)
