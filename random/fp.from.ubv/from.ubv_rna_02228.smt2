(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 188279056295625398839997804023737765242) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10001101101001010011101000101100100010010101000101100110001010010010010111011001000000110001110000110100110101000100110101111010))
;; x should be 188279056295625398839997804023737765242
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
