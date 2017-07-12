(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 170585387852786718981595061664793652647) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10000000010101011000110011110111101010100001011111101100101011011001100110110011111001001011101001110110011011100110110110100111))
;; x should be 170585387852786718981595061664793652647
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x47E00AB19EF542FE))))
(check-sat)
(exit)
