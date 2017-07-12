(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 8877021456137112173653156132454000184) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00000110101011011010011011110010111001111010010111011101101110110100111110010001011011011010010111100111010111011110011000111000))
;; x should be 8877021456137112173653156132454000184
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
