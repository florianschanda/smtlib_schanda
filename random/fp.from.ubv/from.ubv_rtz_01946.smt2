(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 27150880986895335296765432741077925452) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00010100011011010001000111001000110110001000111001101111100111101001011010100000010100111101000100010101011001110011111001001100))
;; x should be 27150880986895335296765432741077925452
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x47B46D11C8D88E6F))))
(check-sat)
(exit)
