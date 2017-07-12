(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 5116223617514937780) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0100011100000000011110100100010111110001011100010001110110110100))
;; x should be 5116223617514937780
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10000111101 #b0001110000000001111010010001011111000101110001000111))))
(check-sat)
(exit)
