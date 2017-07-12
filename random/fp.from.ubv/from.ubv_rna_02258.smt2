(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 231478839748373664627155034517514289699) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10101110001001010011001111110001000000111011101111011011110000101010011110100100100001010101010000011110010010010000001000100011))
;; x should be 231478839748373664627155034517514289699
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47E5C4A67E20777B))))
(check-sat)
(exit)
