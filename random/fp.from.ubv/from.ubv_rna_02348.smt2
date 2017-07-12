(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 336650146673480818208721291368136377026) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11111101010001000111010110110111001010010111110001111001101010010001001011000111001110001000111100100101110100110000001011000010))
;; x should be 336650146673480818208721291368136377026
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r (fp #b0 #b11111110 #b11111010100010001110110))))
(check-sat)
(exit)
