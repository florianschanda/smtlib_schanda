(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 193971979437392596143950626262221461091) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10010001111011011010010011110100100101010111100110110010001101100100110101100101101100010011100010011111001110100001011001100011))
;; x should be 193971979437392596143950626262221461091
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x7F11EDA5))))
(check-sat)
(exit)
