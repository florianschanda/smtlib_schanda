(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 209426290324664075770583932923968866336) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10011101100011100000100101001111011001101100011111010111111000011000111101001111101100001011101111110101011110011100100000100000))
;; x should be 209426290324664075770583932923968866336
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
