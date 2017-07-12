(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 316042094110821396556658850916216149443) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11101101110000110111111001000111001010111101101011011100111100111011101011111001010001010101011101010110101100010001010111000011))
;; x should be 316042094110821396556658850916216149443
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
