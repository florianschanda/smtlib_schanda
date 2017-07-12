(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 166947337767321967972801308933840472202) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b01111101100110001110001100111111111011010000011010011000110110111000111101011101001100101111010010001011111110001000100010001010))
;; x should be 166947337767321967972801308933840472202
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x7EFB31C7))))
(check-sat)
(exit)
