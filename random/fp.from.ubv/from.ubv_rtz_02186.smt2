(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 215770573640571613391939370942867210456) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10100010010100111110011010100000101011001010111000110001100111111001100010000000000101100011011101011011110010001000000011011000))
;; x should be 215770573640571613391939370942867210456
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
