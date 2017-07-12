(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 16652020013063287482) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1110011100010111110110111111100111000111010101010011001010111010))
;; x should be 16652020013063287482
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.geq r ((_ to_fp 11 53) #x43ECE2FB7F38EAA6)))
(check-sat)
(exit)
