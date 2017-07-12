(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 292897397763431093836105528650146478764) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11011100010110011111110010100101011000100111011010111010111100111010010000111111010001110111100011010011010010110111101010101100))
;; x should be 292897397763431093836105528650146478764
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
