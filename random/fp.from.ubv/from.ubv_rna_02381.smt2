(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 279021697661029021817903969665651833615) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11010001111010011001111111001111111001000001001110101100111011100110111110101000110010010110110000010111001010111111101100001111))
;; x should be 279021697661029021817903969665651833615
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
