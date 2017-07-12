(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 4754240637828292444) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0100000111111010011101001010101111001010011110110101111101011100))
;; x should be 4754240637828292444
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
