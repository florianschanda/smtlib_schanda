(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 275561762366071517239813919045420574725) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11001111010011110100001111010100110111101100111011100010111010101000010011010100110110001011101011110000101100111110100000000101))
;; x should be 275561762366071517239813919045420574725
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r (fp #b0 #b11111110 #b10011110100111101000100))))
(check-sat)
(exit)
