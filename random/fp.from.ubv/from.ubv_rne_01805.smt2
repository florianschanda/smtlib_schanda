(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 16036558865354491252) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1101111010001101010011010101001010011101000110001000010101110100))
;; x should be 16036558865354491252
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
