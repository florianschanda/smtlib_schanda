(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 7926188500324146950) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0110110111111111011110100111001001000000100110110101111100000110))
;; x should be 7926188500324146950
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r (fp #b0 #b10000111101 #b1011011111111101111010011100100100000010011011010111)))
(check-sat)
(exit)
