(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 16026375019241967995) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1101111001101001000111110010101100101011000111001001000101111011))
;; x should be 16026375019241967995
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b10111110 #b10111100110100100011111))))
(check-sat)
(exit)
