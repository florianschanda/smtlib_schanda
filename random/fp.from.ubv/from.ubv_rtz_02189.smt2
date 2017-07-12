(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 172244698798340302983370493828264122860) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10000001100101010001111101010000001101111001111011100001101101101000011101101111000010111110000001100110111001000101100111101100))
;; x should be 172244698798340302983370493828264122860
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b11111110 #b00000011001010100011111))))
(check-sat)
(exit)
