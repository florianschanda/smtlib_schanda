(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 12371116183005391967) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1010101110101111000010001001111110011011000111110110110001011111))
;; x should be 12371116183005391967
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10111110 #b01010111010111100001001))))
(check-sat)
(exit)
