(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 114189688698973719217362444610433273498) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01010101111010000010001001010011000110101000100010011111011101000110001000011100100100001100010010010011110001010100111010011010))
;; x should be 114189688698973719217362444610433273498
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r (fp #b0 #b11111101 #b01010111101000001000101))))
(check-sat)
(exit)
