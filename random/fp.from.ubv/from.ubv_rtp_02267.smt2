(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 253333505253185409872724272647021594239) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10111110100101100100001000100100011011011110111110001111110010010100101000011011110111010000101001010001100000010000011001111111))
;; x should be 253333505253185409872724272647021594239
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.eq r ((_ to_fp 8 24) #x7F3E9643))))
(check-sat)
(exit)
