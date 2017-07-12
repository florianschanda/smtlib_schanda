(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 49889439924192790537963092285520891339) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00100101100010000101101101001011110101010100010101000100010111010001000100110110001110010101011110111110111010000100110111001011))
;; x should be 49889439924192790537963092285520891339
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
